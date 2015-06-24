clear;
clc;

//page no. 163
d = 1;// in
p_r = 100;//psi
T_r = 100;// degreeF
p_b = 14.7;// psi
p3 = 14.7;//psi
G = 2.03;// lb/sec
gam1 = 0.553;
gam = 1.4;
V3 = sqrt(2*32.2*(gam/(gam-1))*(p_r+p_b)*144/gam1 *(1-(p3/(p_r+p_b))^((gam-1)/gam)));
T3 = (T_r+460) - V3^2 /(2*32.2*186.5);
a3 = sqrt(gam*32.2*53.3*T3);
M3 = V3/a3;
A3 = G/(gam1*V3);
d3 = (A3/(0.25*%pi))^(1/2);
p3_dash = 103.3;// psia
p_B = p3*(1+ (2*gam/(gam+1))*(M3^2 -1));
printf('V3 = %d fps, a3 = %d fps,  M3 = %.2f ',V3,a3,M3);
printf('\n p3_dash = %.1f psia, p_B = %.1f psia',p3_dash,p_B);

//there are minute errors in the answer given in textbook
