clear;
clc;
b1 = 10;// inches
d1 = 6;// inches
b2 = 12;// inches
d2 = 1/2;// inches
l = 16;// feet
A_s = 11.77;// in^2
I_xxs = 204.80;// in^4
I_yys = 21.76;// in^4
A = A_s + 2*b2*d2;// in^2
I_yy = I_yys + 2*(1/12)*d2*b2^3;// in^4
k = sqrt(I_yy/A);// inches
//from the Perry-Robertson formula
n = 0.003*l*12/k;
p_e = 13000*%pi^2/((l*12)/k)^2 ;// tons/in^2
f = 18;// tons/in^2
x = 0.5*(f+p_e*(1+n));
p_0 = x - sqrt(x^2 - f*p_e);// tons/in^2
P = p_0*A;// tons
P_safe = P/2.36;// tons
printf('The safe load, P = %.1f tons',P_safe);

//there is a minute calculation error in the answer given in text book
