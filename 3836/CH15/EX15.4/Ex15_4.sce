clear
//

//Initialisation
Ic=2                 //sinusoidal Current
C=10*10**-3          //Capacitance
w=25                 //Angular Frequency  



//Calculation 
Xc=1/(w*C)                 //Reactance
Vc= Ic*Xc                   //Voltage

//Result
printf("\n Voltage appear across the capacitor, V = %d V r.m.s",Vc)

