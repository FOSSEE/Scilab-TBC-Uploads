clear;
clc;

//page no. 155

v = 586;// fps
p = 13;// psia
T = 0;// degreeF
gam = 1.4;
rho_0 = p*144/(32.2*53.3*(460+T));
a_0 = sqrt(gam*32.2*53.3*(T+460));
M_0 = v/a_0;
p_8_approx = p+(0.5/144)*rho_0*v^2 *(1+0.25*M_0^2);
p_8_exact = p*(1+M_0^2 *(gam-1)/2)^(gam/(gam-1));
T_8 = v^2 /(2*32.2*186.5) +460;
rho_8 = p_8_exact*144/(T_8*32.2*53.3);
printf('At stagnetion point, p = %.2f psia\n T = %.1f degreeR\n density = %.5f slug/cuft',p_8_exact,T_8,rho_8);
