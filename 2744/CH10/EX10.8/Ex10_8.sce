clear;
clc;
d = 12;// inches
t = 3;// inches
p_x1 = 900;// lb/in^2
x1 = 0.5*d;// inches
p_x2 = 0;
x2 = 0.5*d+t;// inches
//from Lame's formulae
b = (p_x1-p_x2)/((1/x1^2)-(1/x2^2));
a = (b/x1^2)- p_x1;
f_x1 = (b/x1^2)+a;// lb/in^2
f_x2 = (b/x2^2)+a;// lb/in^2
printf('The maximum and minimum intensities of circumferential stresses are: f_6 = %d lb/in^2.,tensile\n   f_9 = %d lb/in^2., tensile',f_x1,f_x2);
