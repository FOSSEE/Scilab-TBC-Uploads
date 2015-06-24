clear;
clc;
printf("\t\t\tExample Number 6.3\n\n\n");
// heating of air in laminar tube flow for constant heat flux
// illustration6.3
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
//the tube length is short, so we expect a thermal entrance effect and shall consult figure(6-5)
// the inverse Graetz number is computed as 
Gz_inverse = L/(Re_d*Pr*d);
// therefore, for qw = constant, we obtain the nusselt number at exit from figure (6-5) as
Nu = 4.7;
// the total heat transfer is obtained in terms of the overall energy balance 
// at entrance 
rho = 1.1774;// [kg/cubic meter] density
// mass flow is
m_dot = rho*%pi*d^(2)*u/4;// [kg/s]
q = m_dot*Cp*(Tb-Ta);// [W]
// thus we may find the heat transfer without the actually determining wall temperatures or values of h. However, to determine Tw we must compute qw for insertion in equation(b). we have
qw = q/(%pi*d*L);// [W]
// now
Tw = Tb+(qw*d/(Nu*k));// [degree celsius]
// and the heat transfer coefficient is
h = qw/(Tw-Tb);// [W/square meter degree celsius]
printf("\n total heat transfer is %f W",q);
printf("\n\n exit wall temperature is %f degree celsius",Tw);
printf("\n\n heat transfer coefficient is %f W/square meter degree celsius",h);




