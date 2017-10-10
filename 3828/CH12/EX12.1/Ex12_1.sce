//Chapter 12 : Semiconductor Physics

clear;

//Variable declaration
ni=2.5*10**19          //intrinsic concentration 
myun=0.40              //mobility of electrons 
myup=0.25              //mobility of holes
e=1.6*10**-19

//Calculations
sigmai=ni*e*(myun+myup) //conductivity of intrinsic semiconductor
rhoi=1/sigmai

//Result
mprintf("Resistivity = %f ohm-m",rhoi)

