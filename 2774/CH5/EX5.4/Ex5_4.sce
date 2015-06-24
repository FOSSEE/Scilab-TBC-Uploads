clc
// initialization of variables
Th=200+273 // higher temperture in kelvin 
Tl=20+273 // lower temperture in kelvin
Wdot=15 // output of engine in kW

ef=1-(Tl/Th) // carnot efficiency

Qhdot=Wdot/ef // heat supplied by reservoir
printf(" The heat suppled by higher temperature reservoir is %.2f kW \n ",Qhdot)
// using forst law
Qldot=Qhdot-Wdot // heat rejected to reservoir
printf(" The heat suppled by lower temperature reservoir is %.2f kW",Qldot)

 
 
