//Chapter 12 : Semiconductor Physics

clear;

//Variable declaration
myun=0.36              //mobility of electrons 
myup=0.14              //mobility of holes
e=1.6*10**-19  
rhoi=2.2               //resistivity

//Calculations
ni=1/(rhoi*e*(myun+myup))/10**18

//Result
mprintf("Intrinsic concentration= %.3f*10**18 m**-3",ni)

