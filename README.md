# sci-physics — Sovereign Epistemic Knowledge Corpus (`v1.0.0`)

[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](VERSION)
[![ZeroCloudGravity](https://img.shields.io/badge/ZeroCloudGravity-v1.0.0-0F766E.svg)](https://github.com/mtwuser/zero-cloud-gravity)
[![Epistemic Grade](https://img.shields.io/badge/epistemic_grade-E3..E1-1D4ED8.svg)](docs/README.md)
[![License: MIT](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

> **Physical Sciences Knowledge Corpus (`2019 BIPM` Exact SI Constants, Noether Conservation Laws & Transport)** (`layer_role: knowledge`, `precedence: 20`, `stewardship_stage: public-community`).

## 1. Epistemic Corpus Index (`1:1:1` Progressive Disclosure)

All sections expose deterministic `rcap1` (`L0 -> L3`) capsules and cryptographic `citation_receipt` anchors (`<layer>::<file>#<slug>@<sha256_16>:<E3..E0>`):

| Tier | Credibility | Document |
| :--- | :--- | :--- |
| **Index** | `E2` | [`docs/README.md`](docs/README.md) |
| **Guide (`M1 -> M4`)** | `E1` | [Physical Modeling, Buckingham Pi Dimensional Analysis & Regime Verification Guide (`M1 -> M4` — `E1`)](docs/guides/01_physical_modeling_and_dimensional_analysis_guide.md) |
| **Architecture & Taxonomy** | `E3` | [Physical Sciences Taxonomy, Dimensionless Regimes & Scale Hierarchy (`E3`)](docs/architecture/01_physics_taxonomy_and_regime_map.md) |
| **Primary Reference** | `E3/E2` | [Exact SI Constants, Noether Conservation Laws, Thermodynamics & Transport (`E3`)](docs/reference/01_conservation_laws_thermodynamics_and_si_constants.md) |

## 2. Mounting & Querying from Any `ZeroCloudGravity` Node

Link or mount this corpus into a personal (`<persona>-pc`, `<persona>-tutor`), research, or enterprise node without cloud dependencies:

```bash
zcg link <your-node-dir> --target https://github.com/mtwuser/sci-physics.git --relation knowledge-feed
zcg consult-layer <your-node-dir> --layer sci-physics --query "<topic>" --tier flash
```

## 3. Layer Setup Blueprint (`State U2: configured`)

- **Node ID & Role**: `sci-physics` (`knowledge`, `precedence: 20`, `surface_veracity_mode: full-open-source`)
- **1-Hop Upstream Engine**: [`mtwuser/zero-cloud-gravity`](https://github.com/mtwuser/zero-cloud-gravity)
- **Active Template Packs**: `science-base`, `scientific-methodology`, `sci-physics`, `knowledge-stewardship-portal`
- **Mission, Scope & Core Invariants**: Physical sciences foundational corpus (`E3..E1`) anchored on `2019 BIPM` exact defining SI constants, Noether symmetry conservation laws, Buckingham Pi dimensional regimes, and transport cut-points.
- **Downstream Topology**: Consumed read-only via `knowledge-feed` links or `layers/*` subtrees across academic, scientific, public-sector, and enterprise nodes.
- **Authorized Layer Steward**: `sci-physics Knowledge Steward <mtwuser@users.noreply.github.com>`
