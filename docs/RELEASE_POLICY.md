# Release Policy

## Versioning

- Public releases follow semantic versioning from `3.0.1`.
- Stable API must not break in patch or minor releases.
- Breaking changes require a major version bump and migration guidance.

## Release Process

1. Update `CHANGELOG.md`
2. Confirm `docs/releases/<version>.md`
3. Push an annotated tag such as `3.0.1`
4. Let the `Release` workflow run:
   - `swift test`
   - docs contract sync
   - doc smoke build/run
   - consumer smoke build
   - GitHub Release creation
5. If the tag push does not start automation, run the `Release` workflow manually with the same version string, for example `3.0.1`.

## Support Posture

- Release quality is expected for Stable API.
- Response time remains best-effort under the lightweight maintainer model.
