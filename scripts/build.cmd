

IF %1 EQU 1 (
 nvcc ..\others\DeviceProperties.cu   -o ..\Others\DeviceProperties
 .\..\others\DeviceProperties
 exit /b
)

IF  %1 EQU 2 (
 nvcc ../src/TextParser.cu ../src/GlobalFunc.cu ../src/IOFunc.cu ../src/HostFunc.cu ../src/main.cu -lnpps -lcufft -o ../bin/gnssprocessgpu
 exit /b
)

IF  %1 EQU 3 (
 nvcc ../src/TextParser.cu ../src/GlobalFunc.cu ../src/IOFunc.cu ../src/HostFunc.cu ../src/mainFloat.cu -lnpps -lcufft -o ../bin/gnssprocessgpu
 exit /b
)

IF  %1 EQU 4 (
 nvcc ../src/TextParser.cu ../src/GlobalFunc.cu ../src/IOFunc.cu ../src/HostFunc.cu ../src/mainInt16.cu -lnpps -lcufft -o ../bin/gnssprocessgpu
 exit /b
)