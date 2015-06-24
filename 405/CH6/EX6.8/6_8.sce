clear;
clc;
printf("\t\t\tExample Number 6.8\n\n\n");
// heat transfer from electrically heated
// illustration6.8
// solution

p = 101325;// [Pa] pressure of air
Tw = 25+273.15;// [K] temperature of air 
d = 3.94*10^(-5);// [m] diameter of wire
R = 287;// [] gas constant
u = 50;// [m/s] velocity of air perpendicular to the air
Tr = 50+273.15;// [degree celsius] rise in surface temperature
// we first obtain the properties at the film temperature :
Tf = (Tw+Tr)/2;// [K]
v_f = 16.7*10^(-6);// [square meter/s]
k = 0.02704;// [W/m degree celsius]
Pr_f = 0.706;// prandtl number
Re_d = u*d/v_f;// reynolds number
// the Peclet number is 
Pe = Re_d*Pr_f;
// and we find that equations (6-17),(6-21), or (6-19) apply.
// let us make the calculation with both the simplest expression, (6-17),and the most complex,(6-21), and compare results.
// using equation (6-17) with 
C = 0.683;
n = 0.466;
// we have
Nu_d = 0.683*Re_d^(n)*Pr_f^(1/3);
// the value of heat transfer coefficient is
h = Nu_d*k/d;// [W/square meter degree celsius]
// the heat transfer per unit length is then 
q_by_L = %pi*d*h*(Tr-Tw);// [W/m]
// using equation (6-21), we calculate the nusselt no as 
Nu_d1 = 0.3+((0.62*Re_d^(1/2)*Pr_f^(1/3))/((1+(0.4/Pr_f)^(2/3))^(1/4))*((1+(Re_d/282000)^(5/8))^(4/5)));
h1 = Nu_d1*k/d;// [W/square meter degree celsius]
// and
q_by_L1 = h1*%pi*d*(Tr-Tw);// [W/m]
printf("heat lost per unit length by the wire is %f W/m",q_by_L1);



