clear
clc
//Example 8.10 MODELING FLOOD DISCHARGE OVER A SPILLWAY
Lmp=1/49; //Lmp=(Lm/Lp)
//Froude-number similitude
//Vm/(g*Lm)=Vp/(g*Lp)
Vm=1.2; //[m/s]
Vp=Vm/(Lmp^(1/2))
printf("\n The velocity in the prototype = %.1f m/s.\n",Vp)
Amp=(Lmp)^2 //Ratio of areas, Amp=(Am/Ap)
Qp=15000; //[m^3/s]
Qm=Qp*Amp*Vm/Vp //[m^3/s]
printf("\n The water flow rate in the model = %.2f m^3/s.\n",Qm)