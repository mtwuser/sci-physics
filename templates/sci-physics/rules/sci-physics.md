---
trigger: always_on
description: "SI/CODATA Dimensional Homogeneity, Noether Conservation Laws, and Thermodynamic Regime Invariants (sci-physics)"
---

# Physical Sciences Corpus Rules (`sci-physics`)

## Scope & Surface Target
- **Template Pack**: `templates/sci-physics/` (`context-stack`).
- **Knowledge Domain**: `scientific-epistemic` (`canonical_trunk: "nature"`, `E3..E1`).

## Normative Invariants (`PHYS-01..03`)

1. **`PHYS-01` (Strict SI Base Unit Homogeneity & CODATA Constants)**:
   - Every physical equation, sensor threshold, or engineering model must be dimensionally homogeneous in `[M, L, T, I, Θ, N, J]` (`kg`, `m`, `s`, `A`, `K`, `mol`, `cd`) and use exact SI/CODATA constants ($c, h, k_B, N_A, R$).
2. **`PHYS-02` (Noether Conservation Laws & Thermodynamic Second-Law Bounds)**:
   - Every closed or open control volume must satisfy mass conservation ($\partial_t \rho + \nabla \cdot (\rho \mathbf{v}) = 0$), energy conservation (First Law $dU = \delta Q - \delta W + \sum \mu_i dN_i$), and non-negative entropy production (Second Law $\Delta S_{\text{univ}} \ge 0$, Gibbs free energy $dG \le 0$ at constant $T, P$).
3. **`PHYS-03` (Regime Validity, Cut-Points `N vs N±1` & `citation_receipt` Provenance)**:
   - Declare the validity regime (classical $v \ll c$, continuum Knudsen $Kn \ll 1$, laminar vs. turbulent Reynolds $Re$, anoxic vs. oxidative thermal windows) and cite `sci-physics::docs/...#<slug>@<digest16>:E3`.

## Verification & Sign-Off Gates
- [ ] Verify zero drift via `zcg diff-project`.
- [ ] Confirm dimensional homogeneity and SI units across all equations and tables.
