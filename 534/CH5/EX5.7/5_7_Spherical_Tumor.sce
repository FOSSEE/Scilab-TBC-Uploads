clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 5.7   Page 293 \n'); //Example 5.7
// Spherical Tumor

//Operating Conditions

k = .5;         //[W/m.K] Thermal Conductivity Healthy Tissue
kappa = .02*10^3;    //[m] extinction coefficient
p = .05;            // reflectivity of skin
D = .005;            //[m] Laser beam Dia
rho = 989.1  ;      //[kg/m^3] Density
c = 4180 ;           //[J/kg.K]  Specific Heat
Tb = 37+273;        //[K] Temp of healthy tissue
Dt = .003 ;         //[m] Dia of tissue
d = .02  ;          //[m] depth beneath the skin
Ttss = 55+273 ;       //[K] Steady State Temperature
Tb = 37+273 ;       //[K] Body Temperature
Tt = 52+273 ;       //[K] Tissue Temperature
q = .170 ;           //[W] 

//Case 12 of Table 4.1
q = 2*%pi*k*Dt*(Ttss-Tb);

//Energy Balancing
P = q*(D^2)*exp(kappa*d)/((1-p)*Dt^2);

//Using Eqn 5.14
t = rho*(%pi*Dt^3/6)*c*(Tt-Tb)/q;

alpha=k/(rho*c);
Fo = 10.3;
//Using Eqn 5.68
t2 = Fo*Dt^2/(4*alpha);

printf("\n (a) Heat transferred from the tumor to maintain its surface temperature at Ttss = 55 degC is %.2f W \n\n (b) Laser power needed to sustain the tumor surface temperautre at Ttss = 55 degC is %.2f W \n\n (c) Time for tumor to reach Tt = 52 degC when heat transfer to the surrounding tissue is neglected is %.2f sec \n\n (d) Time for tumor to reach Tt = 52 degC when Heat transfer to thesurrounding tissue is considered and teh thermal mass of tumor is neglected is %.2f sec" ,q,P,t,t2);

//END