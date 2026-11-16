---
epistemic_grade: E3
---

# Absolute-Epoch Keplerian vs. Perturbed Cowell Orbital Propagation Laws (`sci-physics`)

> *"Unperturbed two-body trajectories shall propagate analytically from an immutable reference epoch t0 via Kepler's equation with zero cumulative step drift, reserving symplectic or high-order Cowell numerical integration strictly for non-Keplerian perturbation regimes."*

This specification establishes the physical conservation and propagation invariants for orbital and multi-body spatial simulations (`PHYS-ORBIT-01..03`).

---

## 1. Zero-Drift Absolute-Epoch Keplerian Propagation (`PHYS-ORBIT-01` — `E3`)

 Under central gravitational parameter $\mu = G M > 0$ ($\text{m}^3\cdot\text{s}^{-2}$), specific mechanical energy $\mathcal{E} = \frac{v^2}{2} - \frac{\mu}{r} = -\frac{\mu}{2a}$ and angular momentum $\mathbf{h} = \mathbf{r} \times \mathbf{v}$ are exact Noether invariants. Rather than accumulating $\Delta t$ Euler/RK4 truncation drift across frames, position at any wall-clock or simulation instant $t$ is evaluated directly from epoch $t_0$:

$$M(t) = M_0 + \sqrt{\frac{\mu}{a^3}}\,(t - t_0) \pmod{2\pi}, \qquad M(t) = E - e\sin E \quad (0 \le e < 1)$$

| Propagation Regime | Governing Law & Solver | Mandatory Cut-Point & Drift Invariant |
| :--- | :--- | :--- |
| **Elliptic Two-Body ($0 \le e < 1$)** | Newton-Raphson / Halley iteration on $f(E) = E - e\sin E - M(t) = 0$ to $|f(E)| \le 10^{-12}\text{ rad}$. | Zero secular energy drift ($\Delta a = 0$) over arbitrary $(t - t_0)$ spans (`0` frame-rate coupling). |
| **Near-Parabolic / Hyperbolic ($e \ge 1$)** | Universal variable Stumpff formulation ($C(z), S(z)$) or hyperbolic $M_h = e\sinh H - H$. | Explicit branch cut at $e = 1 \pm 10^{-7}$ avoiding $a \to \infty$ singularity. |
| **Perturbed Cowell ($\mathbf{a} = -\frac{\mu}{r^3}\mathbf{r} + \mathbf{a}_p$)** | Symplectic Yoshida / Gauss-Jackson or adaptive Dormand-Prince (`RK45`/`DOP853`) when $\|\mathbf{a}_p\| / (\mu/r^2) > \varepsilon_p$ ($J_2$, drag, SRP, 3rd-body). | Monitor relative Hamiltonian/Jacobi drift $|\Delta \mathcal{E}/\mathcal{E}_0|$ and re-anchor epoch elements on maneuver impulses $\Delta\mathbf{v}$. |
