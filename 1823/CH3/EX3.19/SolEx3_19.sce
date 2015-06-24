//Find the value of RB that just results in saturation if (a) the capacitor is present, and 
//(b) the capacitor is replaced with a short circuit.
//Solved Example Ex3.19 page no 91  
clear
clc
b=50
Vbeq=0.3  //V
Vcc=12//v
Vs=2//v
Rc=4//Kohm
Rs=100//Kohm
Vce=0.2
Icq=(Vcc-Vce)/Rc
printf("\n  Icq = %0.2f  mA",Icq)
Rb=((Vcc-Vbeq)/(Icq/b))
printf("\n  Rb = %0.2f  Ohm",Rb)
