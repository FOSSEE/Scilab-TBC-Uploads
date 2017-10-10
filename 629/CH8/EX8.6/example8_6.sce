clear
clc
//Example 8.6 APPLICATION OF PRESSURE COEFFICIENT
//p-prototype, m-model
Lmp=1/10; //Lmp=(Lm/Lp)
//Vm*Lm/vm=Vp*Lp/vp, vm=vp
Vpm=Lmp //Vpm=(Vp/Vm)
Pm=17.8; //[kPa]
//Pressure difference
//Pm/(rho_m*Vm^2/2)=Pp/(rho_p*Vp^2/2)
Pp=Pm*10^3*Vpm^2 //[Pa]
printf("\n The pressure difference between two points on the prototype = %.f Pa.\n",Pp)