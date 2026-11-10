---
epistemic_grade: E1
---

# Physical Modeling, Buckingham $\Pi$ Dimensional Analysis & Regime Verification Guide (`M1 -> M4` — `sci-physics` `E1`)

> **Epistemic Credibility Grade: `E1` (Pedagogical & Engineering Physical Modeling Methodology across `M1..M4`)**
>
> Practical guide connecting exact SI constants, conservation laws, and dimensionless regime cut-points across `domain-physics:M1..M4` for secondary/university learners, software simulation teams, and process/mechanical engineers ([01_conservation_laws_thermodynamics_and_si_constants.md](../reference/01_conservation_laws_thermodynamics_and_si_constants.md)).

---

## 1. Progressive `M1 -> M4` Physics Mastery & Modeling Ladder [E1]

> **Summary [E1]:** *Physical mastery advances from free-body diagrams and `SI` dimensional homogeneity (`M1`) to variational/Maxwell field derivations (`M2`), coupled transport and regime cut-point engineering (`M3`), and non-equilibrium/relativistic synthesis (`M4`) ([01_physics_taxonomy_and_regime_map.md](../architecture/01_physics_taxonomy_and_regime_map.md)).*

The table below defines expected competencies and `verify-mastery` gates across `M1..M4`:

| Mastery Stage | Target Persona & Focus | Core Physical Pillars | Verification Gate (`verify-mastery`) |
| :--- | :--- | :--- | :--- |
| **`M1` (School & Foundations)** | Secondary / High School (`tutor-iso-lab`): physical intuition, vector diagrams, `SI` base units (`kg`, `m`, `s`, `A`, `K`, `mol`), conservation balances. | Newton's laws, work-energy, ideal gas law ($PV = nRT$), Ohm/Kirchhoff circuits, geometric/wave optics. | Check `SI` dimensional homogeneity on every term before numerical substitution and verify sign conventions. |
| **`M2` (Undergraduate Rigor)** | University Physics & Engineering (`specialty/physics`, `specialty/maths-physics`): variational calculus, vector fields, thermodynamic potentials. | Lagrangian/Hamiltonian mechanics, Maxwell electrodynamics, Laws `0–3` of Thermodynamics, 1D/3D Schrödinger eigenstates. | Derive equations of motion from $\delta S = 0$ and verify classical asymptotic limits ($\beta \to 0$, $\hbar \to 0$). |
| **`M3` (Applied Systems & Transport)** | Process, Thermal & Mechatronics Engineers (`dept-iso-eng`, `dept-iso-bio`): coupled momentum/heat/mass transfer and dimensionless cut-points. | Navier-Stokes ($\text{Re}, \text{Ma}$), Fourier/Fick ($\text{Bi}, \text{Fo}, \text{Pe}$), Arrhenius kinetics, `Carnot` exergy efficiency. | Audit regime numbers (`Bi < 0.10` vs. `>= 0.10`, `Re < 2300` vs. `> 4000`) before selecting design correlations. |
| **`M4` (Frontier Research)** | Principal Scientists & Simulation Architects: symplectic integrators, statistical mechanics, gauge symmetries, multiphase reactive flows. | Noether currents, Boltzmann/Liouville kinetic equations, relativistic geodesics (`GNSS`), coupled radiative-convective PDEs. | Seal models with `citation_receipt` anchors (`sci-physics` `E3`) and verify machine-precision conservation invariants. |

---

## 2. 4-Step Buckingham $\Pi$ & Physical Sanity Verification Protocol [E1]

> **Summary [E1]:** *Every physical equation or simulation kernel must pass dimensional rank reduction (`N - r` $\Pi$-groups), asymptotic limit checks, conservation invariants, and dimensionless regime bounds before deployment ([01_conservation_laws_thermodynamics_and_si_constants.md](../reference/01_conservation_laws_thermodynamics_and_si_constants.md)).*

1. **Step 1 — `SI` Base-Unit Conversion & Buckingham $\Pi$ Reduction**: Convert all inputs to strict `SI` (`K`, `Pa`, `m`, `kg`, `s`, `mol`; never raw `°C` in ratios $T_C/T_H$ or Arrhenius $\exp(-E_a/RT)$!). For $N$ physical variables spanning $r = \operatorname{rank}(\mathbf{D})$ independent base dimensions, form $N - r$ dimensionless $\Pi$ groups.
2. **Step 2 — Dimensionless Regime Cut-Point Check (`N` vs. `N ± 1`)**: Compute $\beta, \text{Kn}, \text{Re}, \text{Ma}, \text{Bi}, \text{Pe}$ first to confirm the chosen equation is inside its validity domain ([01_physics_taxonomy_and_regime_map.md](../architecture/01_physics_taxonomy_and_regime_map.md)).
3. **Step 3 — Asymptotic & Conservation Sanity Test**: Verify limiting behavior ($t \to 0$, $t \to \infty$, $k_{\text{eff}} \to \infty$) and confirm closed-system mass, charge, momentum, and Second-Law entropy ($\dot{S}_{\text{gen}} \ge 0$) never drift.
4. **Step 4 — `citation_receipt` Provenance**: Reference `sci-physics::docs/reference/01_conservation_laws_thermodynamics_and_si_constants.md#<slug>@<digest16>:E3`.

---

## 3. Multi-Perspective Verification Examples (`M1..M4`) [E1]

> **Summary [E1]:** *From checking `Kelvin` conversions in school thermodynamics (`M1`) to validating `Biot` numbers in industrial drying trays (`M3`) and `GNSS` relativistic clock shifts (`M4`), `sci-physics` prevents silent unit and regime errors.*

- **School / Intro University (`M1`)**: Computing Carnot efficiency between $40.0\,^\circ\text{C}$ and $20.0\,^\circ\text{C}$ requires absolute temperatures ($T_H = 313.15\text{ K}$, $T_C = 293.15\text{ K} \implies \eta_{\max} = 6.39\%$, catching the common Celsius-ratio error $1 - 20/40 = 50\%$).
- **Bioprocess / Thermal Engineer (`M3`, `dept-iso-bio`)**: Evaluating convective drying of a $L_c = 5\text{ mm}$ biomass bed ($k_s = 0.12\text{ W}\cdot\text{m}^{-1}\cdot\text{K}^{-1}$, $h = 28\text{ W}\cdot\text{m}^{-2}\cdot\text{K}^{-1}$) yields $\text{Bi} = 1.17 \ge 0.10$, proving internal thermal gradients cannot be neglected (`Fourier` PDE required).
- **Geodetic / Satellite Engineer (`M4`, `geo-es`)**: `GNSS` satellites at $r \approx 26\,560\text{ km}$ experience combined Special Relativistic time dilation ($-7.2\,\mu\text{s/day}$) and General Relativistic gravitational blueshift ($+45.8\,\mu\text{s/day}$), requiring a net $+38.6\,\mu\text{s/day}$ relativistic clock offset (`PHYS-BR-04`).
