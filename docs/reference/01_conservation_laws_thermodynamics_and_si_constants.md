---
epistemic_grade: E3
---

# Exact SI Constants, Noether Conservation Laws, Thermodynamics & Transport (`sci-physics` — `E3`)

> **Epistemic Credibility Grade: `E3` (2019 BIPM/CGPM Exact SI Constants, Fundamental Conservation Laws & Transport Equations)**
>
> Primary physical reference substrate for exact SI defining constants, symmetry-driven conservation theorems, thermodynamic spontaneity cut-points, and coupled heat/mass/momentum transport consumed via `make consult LAYER=sci-physics` ([01_physics_taxonomy_and_regime_map.md](../architecture/01_physics_taxonomy_and_regime_map.md)).

---

## 1. Exact SI Defining & Derived Constants (`2019 BIPM Redefinition` & `CODATA`) [E3]

> **Summary [E3]:** *Since the 2019 BIPM/CGPM redefinition of the International System of Units (`SI`), all seven base units (`s`, `m`, `kg`, `A`, `K`, `mol`, `cd`) are anchored to seven exact numerical constants with zero experimental uncertainty ([01_physical_modeling_and_dimensional_analysis_guide.md](../guides/01_physical_modeling_and_dimensional_analysis_guide.md)).*

The table below lists all seven exact `SI` defining constants together with exact/canonical reference constants used across physics, chemistry, and engineering:

| Symbol & Constant Name | Exact / Canonical Value | `SI` Unit | Status |
| :--- | :--- | :--- | :--- |
| **$\Delta\nu_{\text{Cs}}$** — Caesium-133 hyperfine transition frequency | `9 192 631 770` | $\text{Hz}$ ($\text{s}^{-1}$) | **Exact (`SI` Defining)** |
| **$c$** — Speed of light in vacuum | `299 792 458` | $\text{m}\cdot\text{s}^{-1}$ | **Exact (`SI` Defining)** |
| **$h$** — Planck constant ($\hbar = h / 2\pi$) | $6.62607015 \times 10^{-34}$ | $\text{J}\cdot\text{s}$ ($\text{kg}\cdot\text{m}^2\cdot\text{s}^{-1}$) | **Exact (`SI` Defining)** |
| **$e$** — Elementary charge | $1.602176634 \times 10^{-19}$ | $\text{C}$ ($\text{A}\cdot\text{s}$) | **Exact (`SI` Defining)** |
| **$k_B$** — Boltzmann constant | $1.380649 \times 10^{-23}$ | $\text{J}\cdot\text{K}^{-1}$ | **Exact (`SI` Defining)** |
| **$N_A$** — Avogadro constant | $6.02214076 \times 10^{23}$ | $\text{mol}^{-1}$ | **Exact (`SI` Defining)** |
| **$K_{\text{cd}}$** — Luminous efficacy at $540\text{ THz}$ | `683` | $\text{lm}\cdot\text{W}^{-1}$ | **Exact (`SI` Defining)** |
| **$R = N_A k_B$** — Molar gas constant | `8.31446261815324` | $\text{J}\cdot\text{mol}^{-1}\cdot\text{K}^{-1}$ | **Exact Product** |
| **$F = N_A e$** — Faraday constant | `96 485.3321233100184` | $\text{C}\cdot\text{mol}^{-1}$ | **Exact Product** |
| **$\sigma = \frac{2\pi^5 k_B^4}{15 c^2 h^3}$** — Stefan-Boltzmann constant | $5.670374419 \times 10^{-8}$ (`10` sig. figs.) | $\text{W}\cdot\text{m}^{-2}\cdot\text{K}^{-4}$ | **Exact Rational Multiple of $\pi^5$** |
| **$g_n$ / $p_{\text{atm}}$ / $T_0$** — Standard gravity, atmosphere & ice point | $9.80665\text{ m}\cdot\text{s}^{-2}$ · $101\,325\text{ Pa}$ · $273.15\text{ K}$ | $\text{m}\cdot\text{s}^{-2}$ · $\text{Pa}$ · $\text{K}$ | **Exact Conventional (`ISO 80000`)** |

---

## 2. Noether's Theorem, Electrodynamics & Conservation Laws (`PHYS-02`) [E3]

> **Summary [E3]:** *By Noether's First Theorem (`1918`), every continuous differentiable symmetry of the action $S = \int \mathcal{L}\,dt$ generates an exact conserved current ($\partial_\mu j^\mu = 0$), forbidding perpetual-motion or non-conservative drift in closed physical models ([01_physics_taxonomy_and_regime_map.md](../architecture/01_physics_taxonomy_and_regime_map.md)).*

The table below pairs each continuous symmetry with its conserved quantity and continuum balance equation:

| Continuous Symmetry Transformation | Conserved Physical Quantity | Differential / Variational Conservation Law |
| :--- | :--- | :--- |
| **Time Translation ($t \to t + \delta t$, $\partial_t \mathcal{L} = 0$)** | Total Energy ($E$ / Hamiltonian $H$) | $H = \sum_i \dot{q}_i \frac{\partial \mathcal{L}}{\partial \dot{q}_i} - \mathcal{L} = \text{const}$ |
| **Spatial Translation ($\mathbf{r} \to \mathbf{r} + \delta\mathbf{r}$)** | Total Linear Momentum ($\mathbf{P}$) | $\frac{\partial (\rho \mathbf{u})}{\partial t} + \nabla \cdot (\rho \mathbf{u} \otimes \mathbf{u} - \boldsymbol{\sigma}) = \rho \mathbf{b}$ |
| **Spatial Rotation ($\mathbf{r} \to R(\delta\boldsymbol{\theta})\mathbf{r}$)** | Total Angular Momentum ($\mathbf{L} = \sum \mathbf{r}_i \times \mathbf{p}_i$) | $\boldsymbol{\sigma} = \boldsymbol{\sigma}^\top$ (Cauchy stress symmetry in non-polar continua) |
| **Global $U(1)$ Gauge Phase ($\psi \to e^{i\alpha}\psi$)** | Electric Charge ($Q = \int \rho\,dV$) | $\frac{\partial \rho}{\partial t} + \nabla \cdot \mathbf{J} = 0$ (implied by $\nabla \cdot (\nabla \times \mathbf{B}) = 0$) |

- **Maxwell's Equations & Poynting Energy Balance (`E3`)**:
  $$\nabla \cdot \mathbf{E} = \frac{\rho}{\varepsilon_0}, \quad \nabla \cdot \mathbf{B} = 0, \quad \nabla \times \mathbf{E} = -\frac{\partial \mathbf{B}}{\partial t}, \quad \nabla \times \mathbf{B} = \mu_0 \mathbf{J} + \mu_0 \varepsilon_0 \frac{\partial \mathbf{E}}{\partial t}$$
  with electromagnetic energy conservation $-\partial_t u_{\text{em}} = \nabla \cdot \mathbf{S} + \mathbf{J}\cdot\mathbf{E}$, where $\mathbf{S} = \frac{1}{\mu_0}\mathbf{E} \times \mathbf{B}$.

---

## 3. Laws of Thermodynamics & Spontaneity Cut-Points (`PHYS-03`) [E3]

> **Summary [E3]:** *Macroscopic energy conversion obeys exact entropy production ($\Delta S_{\text{univ}} \ge 0$), bounded below absolute zero ($T > 0\text{ K}$), Carnot efficiency ($\eta \le 1 - T_C/T_H$), and isothermal-isobaric Gibbs free-energy cut-points ($\Delta G_{T,P} < 0, = 0, > 0$).*

- **Combined First & Second Law Fundamental Relation (`E3`)**:
  $$dU = T\,dS - P\,dV + \sum_{k=1}^{C} \mu_k\,dN_k, \qquad dG = -S\,dT + V\,dP + \sum_{k=1}^{C} \mu_k\,dN_k$$

The table below defines exact thermodynamic cut-points (`N` vs. `N ± 1`):

| Thermodynamic Criterion | Spontaneous / Feasible Regime | Exact Reversible Equilibrium Cut-Point | Forbidden / Non-Spontaneous Regime |
| :--- | :--- | :--- | :--- |
| **Isothermal-Isobaric Gibbs ($\Delta G_{T,P}$)** | $\Delta G_{T,P} < 0$ ($Q_r < K_{\text{eq}}$: exergonic forward drive) | $\Delta G_{T,P} = 0$ ($Q_r = K_{\text{eq}}$, $\Delta G^\circ = -RT\ln K_{\text{eq}}$) | $\Delta G_{T,P} > 0$ ($Q_r > K_{\text{eq}}$: endergonic; requires external work input). |
| **Heat Engine Thermal Efficiency ($\eta$)** | $\eta < 1 - \frac{T_C}{T_H}$ (real irreversible cycle, $\dot{S}_{\text{gen}} > 0$) | $\eta_{\text{Carnot}} = 1 - \frac{T_C}{T_H}$ ($\dot{S}_{\text{gen}} = 0$) | $\eta > 1 - \frac{T_C}{T_H}$ (**Violates 2nd Law of Thermodynamics**). |
| **Gibbs Phase Rule ($F = C - \Pi + 2$)** | $F \ge 1$ (bivariant/univariant coexistence curve) | $F = 0$ ($\Pi = C + 2$: invariant triple point, e.g. $\text{H}_2\text{O}$ at $273.16\text{ K}$, $611.657\text{ Pa}$) | $\Pi > C + 2$ ($F < 0$: impossible equilibrium phase coexistence). |

---

## 4. Coupled Transport Equations, Arrhenius Kinetics & Similarity Groups (`PHYS-04`) [E3]

> **Summary [E3]:** *Heat conduction (`Fourier`), molecular diffusion (`Fick`), and chemical/thermal reaction rates (`Arrhenius`) couple through conservation PDEs scaled by Prandtl ($\text{Pr}$), Schmidt ($\text{Sc}$), Péclet ($\text{Pe}$), and Fourier ($\text{Fo}$) dimensionless groups ([01_physical_modeling_and_dimensional_analysis_guide.md](../guides/01_physical_modeling_and_dimensional_analysis_guide.md)).*

$$\rho c_p \left(\frac{\partial T}{\partial t} + \mathbf{u}\cdot\nabla T\right) = \nabla \cdot (k_{\text{eff}} \nabla T) + \dot{q}_{\text{gen}}, \qquad \frac{\partial C_i}{\partial t} + \mathbf{u}\cdot\nabla C_i = \nabla \cdot (D_{i,\text{eff}}(T) \nabla C_i) + \nu_i r(T)$$

- **Arrhenius Rate & Diffusivity Temperature Law (`E3`)**: $k(T) = A \exp(-E_a / (RT))$ and $D_{\text{eff}}(T) = D_0 \exp(-E_D / (RT))$.
- **Canonical Transport Numbers**: $\text{Pr} = \nu / \alpha$ (momentum vs. thermal diffusivity), $\text{Sc} = \nu / D$ (momentum vs. mass diffusivity), $\text{Pe}_L = u L / \alpha$ ($\text{Pe}_L < 1$ diffusion-dominated vs. $\text{Pe}_L \gg 1$ advection-dominated), and $\text{Fo} = \alpha t / L_c^2$ ($\text{Fo} \ge 0.2$ quasi-steady eigenmode decay).
