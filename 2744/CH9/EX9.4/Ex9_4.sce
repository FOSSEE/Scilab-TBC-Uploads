clear;
clc;
l = 16;// feet
F = 30;// tons
n = 8;// factor of safety
k = 0.8;//k = d/D
f_c = 36;// tons/in^2
a = 1/1600;
r = 0.25*%pi*(1-k^2);//r = A/D^2
P = n*F;// tons
D1 = sqrt(P/(f_c*r*2) +sqrt((P/(f_c*r))*((a/4)*(l*12)^2)/((1+k^2)/16) + (P/(f_c*r*2))^2));// inches
D = round(D1);// inches
d = k*D;// inches
t = (D-d)/2;// inches
printf('The internal diameter d = %.1f inches',d);
printf('\n The thickness of the metal will be %.2f inches',t);
// the answer is correct only, but it is approximated in the text book
