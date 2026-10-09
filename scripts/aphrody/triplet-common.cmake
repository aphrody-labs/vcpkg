# Shared by the aphrody triplets (x64-windows-static-md, x64-linux-musl, x64-linux).
# APHRODY_STORE reaches port builds without entering the package ABI hash.
list(APPEND VCPKG_ENV_PASSTHROUGH_UNTRACKED APHRODY_STORE)
