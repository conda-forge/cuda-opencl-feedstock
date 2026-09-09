if "%TARGET_PLATFORM%" == "win-arm64" (
    set CUDA_ARCH=arm64
) else (
    set CUDA_ARCH=x64
)

if not exist %PREFIX% mkdir %PREFIX%
if not exist %LIBRARY_LIB%\%CUDA_ARCH% mkdir %LIBRARY_LIB%\%CUDA_ARCH%

move lib\%CUDA_ARCH%\* %LIBRARY_LIB%\%CUDA_ARCH%
if not exist %LIBRARY_INC%\CL mkdir %LIBRARY_INC%\CL
move include\CL\* %LIBRARY_INC%\CL

if not exist %LIBRARY_PREFIX%\etc\OpenCL\vendors mkdir %LIBRARY_PREFIX%\etc\OpenCL\vendors
type nul >> %LIBRARY_PREFIX%\etc\OpenCL\vendors\cuda.icd
