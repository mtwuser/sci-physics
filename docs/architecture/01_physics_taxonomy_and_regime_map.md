# Physical Sciences Taxonomy, Scale Hierarchy & Regime Architecture (`sci-physics` — `E3`)

> **Epistemic Credibility Grade: `E3` (Canonical UNESCO/IUPAP Physical Sciences Branch Architecture)**
>
> This architecture specification maps the 5 foundational branches of `sci-physics` (`canonical_trunk: "nature"`) across velocity, action ($\hbar$), and length scales, connecting mathematical formalism (`sci-maths`) to biological systems (`sci-biology`) and industrial engineering (`dept-iso-eng`, `dept-iso-bio`).

---

## 1. The 5 Canonical Branches of `sci-physics` (`PHYS-01..03` — `E3`)

Physical theories are organized by their governing symmetry group, scale regime, and conservation invariants:

| Branch ID & Domain | Governing Equations & Variational Principle | Characteristic Regime & Cut-Points | Cross-Layer Applications (`tutor-iso-lab`, `dept-iso-eng`, `dept-iso-bio`) |
| :--- | :--- | :--- | :--- |
| **`PHYS-BR-01`: Classical, Analytical & Continuum Mechanics** | Action $\delta \int \mathcal{L}\,dt = 0$ ($\mathcal{L} = T - V$), Hamilton's equations, Cauchy & Navier-Stokes momentum balance | Macroscopic ($L \gg \lambda_{\text{dB}}$), non-relativistic ($v \ll c$), Knudsen $Kn = \lambda/L \ll 1$; Reynolds $Re_{\text{crit}} \approx 2300$. | Structural mechanics, SHM vibration telemetry (`dept-iso-eng`), fluid mixing & sieving (`dept-iso-bio`). |
| **`PHYS-BR-02`: Thermodynamics, Heat/Mass Transfer & Statistical Physics** | Laws `0–3` ($dU = TdS - PdV + \sum \mu_i dN_i$), Boltzmann entropy $S = k_B \ln \Omega$, Fourier conduction $\mathbf{q} = -k\nabla T$, Fick diffusion $\mathbf{J} = -D\nabla C$ | Thermodynamic limit ($N \to \infty$), phase transitions, Arrhenius thermal kinetics $k(T) = A e^{-E_a/(RT)}$. | Solid-state drying/mummification (`[35.0°C, 40.0°C]`), anoxic pyrolysis reactor retort lock (`< 40.0°C`), energy balance (`dept-iso-bio`). |
| **`PHYS-BR-03`: Electromagnetism, Electrodynamics & Optics** | Maxwell's Equations ($\nabla \cdot \mathbf{E} = \rho/\varepsilon_0$, $\nabla \times \mathbf{B} = \mu_0\mathbf{J} + \mu_0\varepsilon_0\partial_t\mathbf{E}$), Lorentz force, Poynting theorem | Classical fields ($E \ll E_{\text{Schwinger}}$), impedance matching, electromagnetic spectrum. | Sensor instrumentation, induction heating, spectroscopy, power electronics (`dept-iso-eng`). |
| **`PHYS-BR-04`: Special & General Relativity** | Minkowski metric $\eta_{\mu\nu}$, Lorentz transformations ($\gamma = (1 - v^2/c^2)^{-1/2}$), Einstein Field Equations $G_{\mu\nu} + \Lambda g_{\mu\nu} = \frac{8\pi G}{c^4}T_{\mu\nu}$ | High velocity ($v \sim c$) and strong gravitational fields ($r \sim 2GM/c^2$). | GNSS satellite clock synchronization (`geo-es`), relativistic electrodynamics (`specialty/physics`). |
| **`PHYS-BR-05`: Quantum Mechanics, Atomic & Condensed Matter Physics** | Schrödinger equation $i\hbar\partial_t|\psi\rangle = \hat{H}|\psi\rangle$, canonical commutation $[\hat{x}, \hat{p}] = i\hbar$, Pauli exclusion, Bloch band theory | Microscopic action ($S \sim \hbar$), thermal de Broglie wavelength $\lambda_{\text{th}} = h/\sqrt{2\pi m k_B T}$. | Chemical bonding & enzyme tunneling (`sci-biology`), alloy metallurgy (`AISI 316` austenitic crystal lattice). |
