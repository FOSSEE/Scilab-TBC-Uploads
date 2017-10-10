clear
clc
//Example 8.9 MODEL TESTS FOR DRAG FORCE ON AN AUTOMOBILE
c=1235; //[km/hr]
//Vm*Lm/vm=Vp*Lp/vp, vm=vp
Lp=0.4; //[m]
Lm=0.4; //[m]
Vp=100; //[km/hr]
Vm=Vp*Lp/Lm //[km/hr]
//Mach number
Mm=Vm/c
//Mm is too high for test models and results in unwanted compressibility effects.
mu=1.51*10^-5; //[m^2/s]
Rep=Vp*0.278*Lp/mu 
//CFm=CFp, if Rem>=10^5
Rem=10^5;
//Wind tunnel speed
Vm=Rem*mu/Lm //[m/s]
printf("\n The minimum required wind tunnel speed = %.1f m/s.\n",Vm)
