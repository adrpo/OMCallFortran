# OMCallFortran

Simple package to call Fortran from Modelica

## Run the model

````
omc External.mos
````

## Build the library

Build the Fortran code into an external library

````
cd External/Resources/Sources
make
````

## Example session

Build the code:

````
adrpo33@ida-0030 MINGW64 /c/home/adrpo33/dev/OMTesting/OMCallFortran
# make -C External/Resources/Sources/
make: Entering directory '/c/home/adrpo33/dev/OMTesting/OMCallFortran/External/Resources/Sources'
gfortran -c external.f -o external.o
ar -ru libexternal.a external.o
mkdir -p ../Library/win64/
cp libexternal.a ../Library/win64/.
make: Leaving directory '/c/home/adrpo33/dev/OMTesting/OMCallFortran/External/Resources/Sources'
````

Run the example:

````
adrpo33@ida-0030 MINGW64 /c/home/adrpo33/dev/OMTesting/OMCallFortran
# omc External.mos
true
""
0
""
record SimulationResult
    resultFile = "C:/home/adrpo33/dev/OMTesting/OMCallFortran/External.Test_res.mat",
    simulationOptions = "startTime = 0.0, stopTime = 3.0, numberOfIntervals = 500, tolerance = 1e-06, method = 'dassl', fileNamePrefix = 'External.Test', options = '', outputFormat = 'mat', variableFilter = '.*', cflags = '', simflags = ''",
    messages = "LOG_SUCCESS       | info    | The initialization finished successfully without homotopy method.
LOG_SUCCESS       | info    | The simulation finished successfully.
 FILENAME SIZE:           28
 FILENAME IS: someFileName.does.not.matter",
    timeFrontend = 0.0013634,
    timeBackend = 0.0120341,
    timeSimCode = 0.0164205,
    timeTemplates = 0.0439794,
    timeCompile = 26.4812665,
    timeSimulation = 2.4019225,
    timeTotal = 28.9578893
end SimulationResult;
""
true
""
````

Clean it up:

````
adrpo33@ida-0030 MINGW64 /c/home/adrpo33/dev/OMTesting/OMCallFortran
# rm External.Test*
````

Clean it via git: 

````
adrpo33@ida-0030 MINGW64 /c/home/adrpo33/dev/OMTesting/OMCallFortran
# git clean -fdx
````

