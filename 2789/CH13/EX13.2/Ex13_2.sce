clear;
clc;

//page no. 511

l = 5;//ft
d = 0.5;//ft
v = 1;//fps
T = 60;//degreeF
D = 0.04;//lb
k = 1/64;//model scale

nu = 0.00001217;
R = v*l/nu;
Cf1 = 0.0020;
Cf2 = 0.0052;
Dx1 = 2*Cf1*l*d*1.938*0.5*v^2;
Dx2 = 2*Cf2*l*d*1.938*0.5*v^2; 
delta1 = l*5.20/sqrt(R);
delta2 = l*0.38/(R^0.2);
V_0 = sqrt((v^2 /l)*(l*(1/k)));
R_p = V_0*l*(1/k)/nu;
Cf = 0.00185;
Dx = 2*Cf*l*d*(1/k)^2 *1.938*0.5*V_0^2;
Dw = D-Dx2;
Dw_p = (1/k)^2 *d*l*V_0^2 *Dw/(l*d);
D = Dw_p + Dx;

printf('Total drag of the prototype = %d lb',D);

//there is an error in the answer given in textbbok
