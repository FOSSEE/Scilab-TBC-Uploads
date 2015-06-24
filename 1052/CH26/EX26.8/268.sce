clc;
//Example 26.8
//page no 393
printf(" Example 26.8 page no 393\n\n");
//refer to example 25.6
//obtain the porous medium friction factor usingthe burke -plummer equation 
///since the flow is turbulent ,eq.26.6 applies
f_pm=1.75//porous medium friction facot
v_s=2//superficial velocity
e=.4//porosity
L=50//length of bed
d_p=0.0833//particle diameter
g=32.174//grav. acc
h_f=(f_pm)*(v_s^2)*(1-e)*L/(g*(e^3)*d_p)//head loss
printf("\n head loss h_f=%f ft of propane ",h_f);
//applying bernoulli eq. between the entrance and gas exit 
//neglect the dynamic head
P2=4320//pressure at the bottom of the catalyst bed
rho_f=0.0128//density of fluid
z_d=-50//length from point 2 to 3,z2-z1
P1 = P2 + rho_f*(z_d-h_f)// absolute pressure of the inlet gas
printf("\n pressure P1=%f psf",P1);
//since flow is turbulent , permeablity of the medium k can not be calculated
