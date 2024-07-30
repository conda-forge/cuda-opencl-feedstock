if not exist %PREFIX% mkdir %PREFIX%

move lib\x64\* %LIBRARY_LIB%
if not exist %LIBRARY_INC%\CL mkdir %LIBRARY_INC%\CL
move include\CL\* %LIBRARY_INC%\CL

if not exist %LIBRARY_PREFIX%\etc\OpenCL\vendors mkdir %LIBRARY_PREFIX%\etc\OpenCL\vendors
type nul >> %LIBRARY_PREFIX%\etc\OpenCL\vendors\cuda.icd
