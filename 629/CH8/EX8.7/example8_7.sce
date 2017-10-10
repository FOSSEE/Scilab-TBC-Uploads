clear
clc
//Example 8.7 DRAG FORCE FROM WIND TUNNEL TESTING
//p-prototype, m-model
Lmp=1/10; //Lmp=(Lm/Lp)
//Vm*Lm/vm=Vp*Lp/vp, vm=vp
Vpm=Lmp //Vpm=(Vp/Vm)
//Fm/(rho_m*Lm^2*Vm^2/2)=Fp/(rho_p*Lp^2*Vp^2/2)
Fm=1530; //force[N]
Fp=Fm*Vpm^2/Lmp^2 //[N]
printf("\n The expected drag force on the prototype = %.f N.\n",Fp)