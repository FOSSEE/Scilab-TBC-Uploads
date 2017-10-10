//Chapter 12 : Semiconductor Physics

clear;

//Variable declaration
myun=0.39              //mobility of electrons 
myup=0.21              //mobility of holes
ni=2.5*10**19          //intrinsic concentration 
e=1.6*10**-19  

//Calculations
sigmai=ni*e*(myun+myup) //conductivity of intrinsic semiconductor
rhoi=1/sigmai

//Result
mprintf("Conductivity = %.1f ohm**-1-m**-1",sigmai)
mprintf("\nResistivity= %.2f ohm-m",rhoi)
//The answer provided in the textbook is wrong

