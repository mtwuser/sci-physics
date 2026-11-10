---
epistemic_grade: E3
---

# Physical Sciences Taxonomy, Dimensionless Regimes & Scale Hierarchy (`sci-physics` — `E3`)

> **Epistemic Credibility Grade: `E3` (Canonical UNESCO / IUPAP Physical Sciences Architecture)**
>
> This architecture specification defines the five foundational branches of **`sci-physics`** (`canonical_trunk: "nature"`), exact dimensionless regime transition cut-points (`N` vs. `N ± 1`), and epistemic interfaces to `sci-maths`, `sci-biology`, `sci-engineering`, and `geo-es` ([01_conservation_laws_thermodynamics_and_si_constants.md](../reference/01_conservation_laws_thermodynamics_and_si_constants.md)).

---

## 1. The 5 Canonical Branches of `sci-physics` (`IUPAP`) [E3]

> **Summary [E3]:** *Physical laws are organized into five canonical `IUPAP` branches (`PHYS-BR-01..05`) defined by their action principle, symmetry group, and characteristic velocity, length, and quantum-action scales ([01_conservation_laws_thermodynamics_and_si_constants.md](../reference/01_conservation_laws_thermodynamics_and_si_constants.md)).*

The table below maps each physical branch to its governing equations, symmetry invariants, and downstream consumers:

| Branch ID & Domain | Governing Variational / Field Laws | Characteristic Regime | Downstream Consumers |
| :--- | :--- | :--- | :--- |
| **`PHYS-BR-01`: Classical, Analytical & Continuum Mechanics** | Stationary action $\delta \int \mathcal{L}\,dt = 0$ ($\mathcal{L} = T - V$), Hamilton's equations, Cauchy & Navier-Stokes momentum balance. | Macroscopic ($S \gg \hbar$), sub-relativistic ($v \ll c$), continuum ($\text{Kn} < 0.01$). | Structural & modal SHM dynamics, fluid conveying, milling mechanics (`sci-engineering`). |
| **`PHYS-BR-02`: Thermodynamics, Statistical Physics & Transport** | Laws `0–3` ($dU = TdS - PdV + \sum \mu_k dN_k$), Boltzmann entropy $S = k_B \ln \Omega$, Fourier heat & Fick mass transport. | Thermodynamic limit ($N \sim N_A$), non-equilibrium gradients, Arrhenius activation. | Convective dehydration, anoxic pyrolysis retorts (`sci-engineering`), cellular bioenergetics (`sci-biology`). |
| **`PHYS-BR-03`: Electromagnetism, Electrodynamics & Optics** | Maxwell's equations ($\nabla \cdot \mathbf{E} = \rho/\varepsilon_0$, $\nabla \times \mathbf{B} = \mu_0\mathbf{J} + \mu_0\varepsilon_0\partial_t\mathbf{E}$), Lorentz force, Poynting theorem. | Classical electromagnetic fields ($E \ll E_{\text{Schwinger}}$), wave optics & impedance matching. | `PT100` / `IEPE` instrumentation, power systems, spectroscopy (`sci-engineering`). |
| **`PHYS-BR-04`: Special & General Relativity** | Minkowski interval $ds^2 = -c^2dt^2 + d\mathbf{x}^2$, Lorentz factor $\gamma = (1 - \beta^2)^{-1/2}$, Einstein Field Equations $G_{\mu\nu} + \Lambda g_{\mu\nu} = \frac{8\pi G}{c^4}T_{\mu\nu}$. | Relativistic velocity ($\beta = v/c \gtrsim 0.01$) or strong gravitational potential ($\Phi/c^2$). | `GNSS`/`ETRS89` satellite clock relativistic corrections (`geo-es`), particle dynamics (`tutor-iso-lab`). |
| **`PHYS-BR-05`: Quantum, Atomic & Condensed Matter Physics** | Schrödinger equation $i\hbar\partial_t|\psi\rangle = \hat{H}|\psi\rangle$, canonical commutation $[\hat{x}, \hat{p}] = i\hbar$, Pauli exclusion, Bloch crystal bands. | Microscopic action ($S \sim \hbar$), thermal de Broglie $\lambda_{\text{th}} = h/\sqrt{2\pi m k_B T}$ comparable to interatomic spacing. | Covalent bonding & photosynthesis (`sci-biology`), austenitic `FCC` alloy metallurgy (`sci-engineering`). |

---

## 2. Dimensionless Regime Transition Matrix (`N` vs. `N ± 1` Physical Cut-Points) [E3]

> **Summary [E3]:** *Every simplified physical model (incompressible flow, lumped thermal capacitance, Newtonian kinematics, continuum no-slip) is valid strictly inside an explicit dimensionless cut-point and must escalate to the full governing equation across the threshold ([01_physical_modeling_and_dimensional_analysis_guide.md](../guides/01_physical_modeling_and_dimensional_analysis_guide.md)).*

The table below codifies the primary dimensionless numbers and their regime transition cut-points:

| Dimensionless Group | Definition | Sub-Critical Simplified Regime | Exact Cut-Point (`N` vs. `N ± 1`) | Super-Critical Escalated Regime |
| :--- | :--- | :--- | :--- | :--- |
| **Lorentz Beta ($\beta$)** | $\beta = v / c$ | $\beta < 0.01$ ($\gamma - 1 < 5 \times 10^{-5}$): Galilean / Newtonian kinematics | $\beta = 0.01$ (`50 ppm` kinetic error) / $\beta = 0.10$ (`0.5%` error) | $\beta \ge 0.01$: Special Relativistic Lorentz kinematics ($\mathbf{p} = \gamma m \mathbf{v}$). |
| **Knudsen Number ($\text{Kn}$)** | $\text{Kn} = \lambda_{\text{mfp}} / L_c$ | $\text{Kn} < 0.01$: Continuum Navier-Stokes with no-slip wall boundary | $\text{Kn} = 0.01$ (continuum limit) / $\text{Kn} = 0.10$ (slip limit) | $0.01 \le \text{Kn} < 0.10$ velocity-slip/temperature-jump; $\text{Kn} \ge 0.10$ Boltzmann kinetic equation. |
| **Internal Pipe Reynolds ($\text{Re}_D$)** | $\text{Re}_D = \rho u D / \mu$ | $\text{Re}_D < 2\,300$: Laminar Hagen-Poiseuille parabolic flow ($f = 64/\text{Re}_D$) | $\text{Re}_D = 2\,300$ (onset of intermittency) / $\text{Re}_D = 4\,000$ | $2\,300 \le \text{Re}_D \le 4\,000$ transitional; $\text{Re}_D > 4\,000$ fully turbulent (`Colebrook-White`). |
| **Mach Number ($\text{Ma}$)** | $\text{Ma} = u / a_s$ | $\text{Ma} < 0.30$ ($\Delta\rho/\rho < 4.5\%$): Incompressible flow ($\nabla \cdot \mathbf{u} = 0$) | $\text{Ma} = 0.30$ (compressibility onset) / $\text{Ma} = 1.00$ (sonic choke) | $\text{Ma} \ge 0.30$ compressible energy-coupled flow; $\text{Ma} \ge 1.00$ supersonic shock waves. |
| **Thermal Biot Number ($\text{Bi}$)** | $\text{Bi} = h L_c / k_s$ | $\text{Bi} < 0.10$: Uniform internal temperature $T(t)$ (`< 5%` spatial error) | $\text{Bi} = 0.10$ (`Lumped` vs. `Distributed` PDE cut-point) | $\text{Bi} \ge 0.10$: Internal conductive gradient dominates; solve full Fourier PDE $T(\mathbf{x}, t)$. |

---

## 3. Epistemic Interfaces Across the Scientific & Engineering Trunk [E3]

> **Summary [E3]:** *`sci-physics` consumes formal differential/spectral operators from `sci-maths` (`E3`) and supplies exact SI constants, thermodynamic bounds, and transport PDEs to `sci-biology` and `sci-engineering` via verifiable `citation_receipt` anchors.*

1. **Inbound Formal Foundation (`sci-maths` $\rightarrow$ `sci-physics`)**: Hilbert-space self-adjoint operators (`MATH-01`) underpin quantum observables, Stokes-Cartan (`MATH-02`) underpins integral/differential Maxwell and continuum conservation laws, and Sturm-Liouville (`MATH-03`) governs normal modes and heat/wave eigenfunctions.
2. **Outbound Biophysical & Engineering Substrate (`sci-physics` $\rightarrow$ `sci-biology` & `sci-engineering`)**: Chemical potential $\mu_k$ and Fick/Fourier equations govern cellular osmotic stasis (`sci-biology`) and convective drying, heat exchangers, and pressure/thermal safety interlocks (`sci-engineering`).
