clear;
clc;
r1 = 0.5*6;// inches
r2 = 0.5*12;// inches
r3 = 0.5*10;// inches
p = 1500;// lb/in^2
p_f = 12000;// lb/in^2
//Initially, for the inner tube
b = -p/((1/r1^2) - (1/r3^2));
a = b/r1^2;
f_3 = (b/r1^2) +a;// lb/in^2
f_5 = (b/r3^2) +a;// lb/in^2
//for the outer tube
b1 = p/((1/r3^2)-(1/r2^2));
a1 = b1/r2^2;
f1_5 = (b1/r3^2)+a1;// lb/in^2
f1_6 = (b1/r2^2)+a1;// lb/in^2
//When the fluid pressure of 12000 lb/in^2, is admitted into the compound tube
B = p_f/((1/r1^2)-(1/r2^2));
A = B/(r2^2);
f_3_ = (B/r1^2)+A;// lb/in^2
f_5_ = (B/r3^2)+A;// lb/in^2
f_6_ = (B/r2^2)+A;// lb/in^2
printf('The hoop stresse are');
printf('\n at x = 3 inches,x = 5 inches initially on inner tube are %.1f lb/in^2.., compressive,  %.1f lb/in^2..,compressive respectively',-f_3,-f_5);
printf('\n at x = 5 inches,x = 6 inches initially on outer tube are %.1f lb/in^2.., tensile,  %.1f lb/in^2..,tensile respectively',f1_5,f1_6);
printf('\n at x = 3 inches,x = 5 inches and x = 6 inches due to fluid pressure are %d lb/in^2.., tensile,  %d lb/in^2..,tensile, and %d lb/in^2..,tensile respectively',f_3_,f_5_,f_6_')
printf('\n at x = 3 inches,x = 5 inches finally on inner tube are %.1f lb/in^2.., tensile,  %.1f lb/in^2..,tensile respectively',f_3_+f_3,f_5_+f_5);
printf('\n at x = 5 inches,x = 6 inches finally on outer tube are %d lb/in^2.., tensile,  %d lb/in^2.., tensile respectively',f1_5+f_5_,f1_6+f_6_);
