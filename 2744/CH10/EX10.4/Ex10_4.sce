clear;
clc;
d = 78;// inches
t = 3/4;// inches
n1 = 70/100;// efficiency of the longitudinal riveted joint
f = 6;// tons/in^2
n2 = 60/100;// efficiency of the circumferential riveted joint
p = f*2240/(d/(2*t*n1));//lb/in^2
p = round(p-1);
f1 = p*d/(2*t);// lb/in^2
f2 = p*d/(4*t*n2);// lb/in^2
printf('The permissible steam pressure, p = %d lb/in^2',p);
printf('\n The circumferential stress, f1 = %d lb/in^2 = %.2f tons/in^2',f1,f1/2240);
printf('\n The longitudinal stress, f2 = %d lb/in^2 = %.2f tons/in^2',f2,f2/2240);
