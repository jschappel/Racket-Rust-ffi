import ctypes

library_name = "./racketffi/target/debug/racketffi.dll"
rusttools = ctypes.CDLL(library_name)
print(rusttools.add_from_rust(20, 10))
