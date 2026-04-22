# Migration Policy

## Stable API

- Stable API changes require a migration note when call sites or behavior must change.
- Behavior changes without source breakage should still be documented if they affect protobuf request execution, decoding, or installation requirements.

## Provisionally Stable API

- These APIs may evolve faster, but changes still require release notes and updated examples.

## Internal / Operational

- Internal details are not migration-contract items.
- Changes to local workspace wiring or adapter internals do not require public migration docs unless they affect documented behavior.
