clear;
clc;
d = 12;// feet
t = 1/2;// inches
d1 = 1/4;// inches
p = 500;// lb/in^2
E_c = 6000;// tons/in^2
PR = 0.3;// Poisson's ratio
E_s = 13000;// tons/in^2
f_t = 8000;// lb/in^2
l = 8;
P_c = l*(%pi/64)*f_t;// lb-wt
f_c = P_c/(2*t);// lb/in^2
//bursting force per inch unit length
f_b = p*d;// lb-wt
f_p = (f_b + (l*0.049*PR*p*d/(4*t))*(E_s/E_c))/(1 + (l*0.049)*E_s/E_c);// lb/in^2 
f_w = (f_p - PR*p*d/(4*t))*E_s/E_c;// lb/in^2
printf('                  Pipe                         Steel-wire');
printf('\n Initually,    %d lb/in^2.,compr.          %d lb/in^2., tensile',f_c,f_t);
printf('\n Due to p,     %d lb/in^2.,tensile.        %d lb/in^2., tensile',f_p,f_w);
printf('\n Finally,      %d lb/in^2.,tensile.        %d lb/in^2., tensile',f_p-f_c,f_w+f_t);

//there is a calculation error in the answer given in text book
