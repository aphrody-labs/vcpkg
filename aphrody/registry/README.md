# aphrody vcpkg registry

Filesystem registry for ports built from aphrody-labs forks. Use it from a manifest:

```json
{ "registries": [ { "kind": "filesystem", "path": "C:/vcpkg/aphrody/registry", "packages": ["gtk", "qtbase"] } ] }
```

| Port | Source | State |
| --- | --- | --- |
| gtk 4.24.1 | aphrody-labs/gtk@02b85fda (tag 4.24.1), upstream vcpkg patches apply unchanged | ready |
| qtbase 6.11.2 | aphrody-labs/qtbase@7a59d906 (tag v6.11.2), upstream vcpkg patches apply unchanged | ready |
| webview2 1.0.4258.31 | builtin port (same nupkg sha512 as NuGet, one blob in the store) | builtin |
| webkit, kirigami, kxmlgui (KF6) | no vcpkg port upstream, KF6 dependency chain missing | pending |
| libcosmic | Rust crate, built with cargo, not vcpkg | out of scope |

Triplets: `x64-windows-static-md`, `x64-linux` (Ubuntu 26.04) and `x64-linux-musl` (Alpine, `VCPKG_FORCE_SYSTEM_BINARIES=1`)
include `scripts/aphrody/triplet-common.cmake`, which passes `APHRODY_STORE` through untracked.
With the aphrody-labs/vcpkg-tool build, `APHRODY_STORE` deduplicates downloads by sha512 in the store and puts the
binary cache in `<store>/vcpkg/binary`.
