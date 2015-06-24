clear;
clc;
d = 3/8;// inches
n = 12;//no. of complete turns
D = 4;// inches
W = 50;// lb-wt
N = 12*10^6;// lb/in^2
alpha = 15*%pi/180;// degrees
E = 30*10^6;// lb/in^2
T = W*0.5*D*cos(alpha);// lb-inches
M = W*0.5*D*sin(alpha);// lb-inches
J = %pi*d^4 /32;// in^4
I = %pi*d^4 /64;// in^4
delta = 64*W*((D/2)^3)*n*sec(alpha)*((cos(alpha)^2)/N + (2*sin(alpha)^2)/E)/d^4 ;// inches
f = 32*W*0.5*D*sin(alpha)/(%pi*d^3) ;// lb/in^2
f_s = T*16/(%pi*d^3);// lb/in^2
f_1 = 0.5*f + sqrt(f_s^2 + 0.25*f^2);// lb/in^2
f_2 = 0.5*f - sqrt(f_s^2 + 0.25*f^2);// lb/in^2
f_s_dash = sqrt(f_s^2 + 0.25*f^2);// lb/in^2
printf('Deflection, delta = %.3f inches',delta);
printf('\n f = %d lb/in^2\n f_s = %d lb/in^2',f,f_s);
printf('\n The maximum intensity of shear stress = %d lb/in^2',f_s_dash);

//there are calculation errors in the answers given in textbook
