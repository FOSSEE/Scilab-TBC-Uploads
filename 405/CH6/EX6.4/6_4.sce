clear;
clc;
printf("\t\t\tExample Number 6.4\n\n\n");
// heating of air with isothermal tube wall
// illustration6.4
// solution

p = 101325;// [Pa] pressure of air
Ta = 27;// [degree celsius] temperature of air 
d = 0.005;// [m] diameter of tube 
R = 287;// [] gas constant
u = 3;// [m/s] velocity of air
L = 0.1;// [m] length of tube
Tb = 77;// [degree celsius] exit bulk temperature 
// we first must evaluate the flow regime and do so by taking properties at the average bulk temperature  
Tb_bar = (Ta+Tb)/2;// [degree celsius]
v = 18.22*10^(-6);// [square meter/s] kinematic viscosity
k = 0.02814;// [W/m degree celsius]
Cp = 1006;// [J/kg K]
Pr = 0.703;// prandtl no.
Re_d = u*d/v;// reynolds number
disp(Re_d, "reynolds number is" );
disp("so that the flow is laminar");
// so that the flow is laminar
// now we determine Nu_d_bar for Tw = constant. for Gz_inverse = 0.0346 we read 
Nu_d = 5.15;
// we thus calculate the average heat transfer coefficient as 
h_bar = Nu_d*k/d;// [W/square meter degree celsius]
// we base the heat transfer on a mean bulk temperature of Tb_bar, so that
Tw = 3.49/(h_bar*%pi*d*L)+Tb_bar;// [degree celsius]
printf("\n exit wall temperature is %f degree celsius",Tw);


 