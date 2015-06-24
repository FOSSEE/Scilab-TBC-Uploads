clear;
clc;
e = 7/4;// inches
E = 13000;// tons/in^2
p = 5;// tons/in^2
y_c = 6;// inches
l = 20;// feet
A = 38.38;// in^2
k = sqrt(11.78);// inches
I = 11.78;// in^4
p_e = (%pi)^2 *E*k^2 /(l*12)^2;// tons/in^2
//from Perry's formula
p_0 = 0.5*((p_e*1.2*e*y_c/k^2)+p_e+p)-sqrt((0.5*((p_e*1.2*e*y_c/k^2)+p_e+p))^2 - p_e*p);// tons/in^2
P = p_0*A;// tons
printf('The safe load, P = %.2f tons',P);

//there is a minute calculation error in the answer given in text book
