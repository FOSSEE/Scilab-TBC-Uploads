clear;
clc;
r1 = 0.5*9;// inches
r2 = 0.5*3;// inches
r3 = 0.5*6;// inches
del_r3 = 0.5*0.003;// inches
E = 13000;// tons/in^2
k1 = r1/r3;
k2 = r2/r3;
a1 = (del_r3/r3)*E/((k1^2 +1)- (k2^2 +1)*(k1^2 -1)/(k2^2 -1));
a = a1*(k1^2 -1)/(k2^2 -1);
b1 = a1*r1^2;
b = a*r2^2;
p_ = (b/r3^2) -a;// tons/in^2
// for the inner tube
f_x1 = (b/r2^2) +a;// tons/in^2
f_x2 = (b/r3^2) +a;// tons/in^2
// for the outer tube
f_x3 = (b1/r3^2) +a1;// tons/in^2
f_x4 = (b1/r1^2) +a1;// tons/in^2
printf('The hoop stresses are as under:');
printf('\n For the inner tube, at x = 1/5 inches, f = %.2f tons/in^2., compressive\n   at x = 3 inches, f = %.2f tons/in^2.,compressive',-f_x1,-f_x2);
printf('\n For the outer tube, at x = 3 inches, f = %.2f tons/in^2., tensile\n   at x = 4.5 inches, f = %.2f tons/in^2.,tensile',f_x3,f_x4);
