clear;
clc;
b = 10;// inches
d = 6;//inches
l = 15;// feet
A = 11.77;// in^2
I_xx = 204.80;// in^4
I_yy = 21.76;// in^4
f_c = 21;// tons/in^2
a = 1/7500;
n = 3;//factor of safety
k = sqrt(I_yy/A);// radius of gyration
P = f_c*A/(1+(a/2)*(l*12/k)^2);// tons
P_s = P/n;// safe load
printf('The safe axial load = %.3f tons',P_s);

//there is a minute calculation error in the answer given in text book
