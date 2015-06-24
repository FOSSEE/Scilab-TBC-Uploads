clear;
clc;
printf("\t\t\tExample Number 9.1\n\n\n");
// condensation on vertical plate
// Example 9.1(page no.-492)
// solution

// we have to check the reynolds no. to that film is laminar or turbulent
Tf = (100+98)/2;// [degree celsius]
Tw = 98;// [degree celsius]
RHOf=960;// [kg/cubic meter] 
MUf=2.82*10^(-4);// [kg/m s]
Kf=0.68;// [W/m degree celsius]
g=9.81;// [m/s^(2)]
L=0.3;// [m]
// RHOf(RHOf-RHOv)~RHOf^(2)
// let us assume laminar film condensate 
Tsat=100;// [degree celsius]
Tg=100;// [degree celsius]
Hfg=2255*10^(3);// [J/kg]
hbar=0.943*((RHOf^(2)*g*Hfg*Kf^(3)/(L*MUf*(Tg-Tw)))^(0.25));// [W/square meter degree celsius]
h=hbar;// [W/square meter degree celsius]
// checking reynolds no. with equation(9-17)
Ref=4*h*L*(Tsat-Tw)/(Hfg*MUf);
printf("value of reynolds no. is %f \n\n so the laminar assumption was correct ",Ref);
// the heat transfer is now calculated from 
A=0.3*0.3;// [square meter]
q=hbar*A*(Tsat-Tw);// [W]
mdot=q/Hfg;// [kg/h]
printf("\n\n the heat transfer is %f w",q);
mdot=mdot*3600;// [kg/h]
printf("\n\n total mass flow condensate is %f kg/h",mdot);