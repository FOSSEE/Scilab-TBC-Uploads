clc
// initialization of variables
clear
// Shaft specifications
Pi=100 //kW
f1=100 //Hz
f2=10 //Hz
tau_Y=220 //MPa
SF=2.5 // Safety factor
Po=100 //kW
//calculations
Pi=Pi*10^3
tau_Y=tau_Y*10^6
Po=Po*10^3
Tin=Pi/(2*%pi*f1)
Tout=Po/(2*%pi*f2)
Din=(16*SF*Tin/(tau_Y*%pi))^(1/3)
Dout=(16*SF*Tout/(tau_Y*%pi))^(1/3)
printf(' Din = %.2f mm  and Dout = %.2f mm',Din*10^3,Dout*10^3)
