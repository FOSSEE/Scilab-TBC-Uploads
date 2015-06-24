clear;
clc;

//page no. 302

p = 14.7;//psia
T = 60;// degreeF
l = 2000;//ft
b = 18;//in
h = 12;// in
v = 10;// fps
R_h = (b*h)/(2*12*(b+h));
Re = v*4*R_h*0.0763/(32.2*0.000000375);
f = 0.019;
h_L = f*(l/(4*R_h))*v^2 /(2*32.2);
del_p = 0.0763*h_L;
printf('loss of head = %.1f ft of air\n and the pressure drop = %.2f psf = %.3f psi',h_L,del_p,del_p*0.0069);
