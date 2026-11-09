# Conservation Laws, Thermodynamics, Transport Equations & SI Constants (`sci-physics` — `E3`)

> **Epistemic Credibility Grade: `E3` (Primary Physical Conservation Laws & Exact CODATA SI Constants)**
>
> Reference substrate for SI units, Noether symmetry conservation theorems, and heat/mass transport equations (`make consult LAYER=sci-physics`).

---

## 1. Exact SI Defining Constants (`2019 SI Redefinition / CODATA` — `PHYS-01` `E3`)

All physical quantities derive from seven exact defining constants:

| Constant Symbol & Name | Exact Numerical Value | SI Unit |
| :--- | :--- | :--- |
| **`c`** — Speed of light in vacuum | `299 792 458` | $\text{m}\cdot\text{s}^{-1}$ |
| **`h`** — Planck constant | $6.62607015 \times 10^{-34}$ | $\text{J}\cdot\text{s}$ ($\text{kg}\cdot\text{m}^2\cdot\text{s}^{-1}$) |
| **`k_B`** — Boltzmann constant | $1.380649 \times 10^{-23}$ | $\text{J}\cdot\text{K}^{-1}$ |
| **`N_A`** — Avogadro constant | $6.02214076 \times 10^{23}$ | $\text{mol}^{-1}$ |
| **`R = N_A k_B`** — Molar gas constant | `8.314462618` | $\text{J}\cdot\text{mol}^{-1}\cdot\text{K}^{-1}$ |
| **`e`** — Elementary charge | $1.602176634 \times 10^{-19}$ | $\text{C}$ ($\text{A}\cdot\text{s}$) |

---

## 2. Noether's Theorem & Fundamental Conservation Laws (`PHYS-02` — `E3`)

By Emmy Noether's First Theorem (`1918`), every continuous differentiable symmetry of the action $S = \int \mathcal{L}(q_i, \dot{q}_i, t)\,dt$ generates a strictly conserved current:

1. **Time-Translation Invariance ($t \to t + \delta t$, $\partial_t \mathcal{L} = 0$) $\rightarrow$ Conservation of Total Energy ($H$)**:
   $$H = \sum_i \dot{q}_i \frac{\partial \mathcal{L}}{\partial \dot{q}_i} - \mathcal{L} = \text{const}$$
2. **Spatial-Translation Invariance ($\mathbf{r} \to \mathbf{r} + \delta\mathbf{r}$) $\rightarrow$ Conservation of Linear Momentum ($\mathbf{P} = \sum_i \mathbf{p}_i$)**.
3. **Spatial-Rotation Invariance ($\mathbf{r} \to R(\delta\boldsymbol{\theta})\mathbf{r}$) $\rightarrow$ Conservation of Angular Momentum ($\mathbf{L} = \sum_i \mathbf{r}_i \times \mathbf{p}_i$)**.
4. **Global $U(1)$ Gauge Phase Invariance ($\psi \to e^{i\alpha}\psi$) $\rightarrow$ Conservation of Electric Charge ($\partial_t \rho + \nabla \cdot \mathbf{J} = 0$)**.

---

## 3. Thermodynamic Potentials, Coupled Fourier/Fick Transport & Arrhenius Kinetics (`PHYS-03` — `E3`)

- **First & Second Laws of Thermodynamics (`E3`)**:
  $$dU = T\,dS - P\,dV + \sum_k \mu_k\,dN_k, \qquad dG = dH - T\,dS - S\,dT = -S\,dT + V\,dP + \sum_k \mu_k\,dN_k$$
  At constant temperature $T$ and pressure $P$, spontaneous processes satisfy $dG_{T,P} \le 0$.
- **Coupled Heat & Mass Transport (`Fourier + Fick`, `E3`)**:
  $$\rho c_p \frac{\partial T}{\partial t} = \nabla \cdot (k_{\text{eff}} \nabla T) + \dot{q}_{\text{rxn}}, \qquad \frac{\partial C_i}{\partial t} = \nabla \cdot (D_{i,\text{eff}}(T) \nabla C_i) + \nu_i r(T)$$
- **Arrhenius Thermal Activation & Dimensionless Transport Numbers (`E3`)**:
  - **Reaction & Diffusivity Temperature Dependence**: $k(T) = A \exp\!\left(-E_a / (R T)\right)$ and $D_{\text{eff}}(T) = D_0 \exp\!\left(-E_D / (R T)\right)$, where $R = 8.314462618\text{ J}\cdot\text{mol}^{-1}\cdot\text{K}^{-1}$.
  - **Dimensionless Similarity Regimes (`Biot`, `Fourier`, `Péclet`)**: $\text{Bi} = h L_c / k_{\text{eff}}$ (`Bi < 0.1` lumped-capacitance limit vs. `Bi >= 0.1` internal gradient regime) and $\text{Fo} = \alpha t / L_c^2$. Applied industrial reactor, retort, and materials cut-points build on these laws in `sci-engineering`.
