clear;
clc;
b = 18;// inches
d = 7;// inches
w1 = 1;// ton per foot run
w2 = 3;// ton per foot run
I_xx = 1149;// in^4
E = 13000;// tons/in^2
R_A = 0.5*b + (b/3);// tons
R_B = 0.5*b + (2*b/3);// tons
//integrating M = E*I*y'', to get E*I*y' and making y' = 0;, we get maximu deflection
x = 9.18;// by trial and error method
y_derivative = -R_A*0.5*x^3 + x^4 /6 +0.5*(2/3)*(1/b)*(1/4)*x^5 + 469.8;
y = -R_A*0.5*x^3 /3 + x^4 /24 +0.5*(2/3)*(1/b)*(1/(4*5))*x^5 + 469.8*x;
y_max = y;// inches
printf('The position of maximum deflection from the end A, x = %.2f inches and \n  Maximum deflection, y_max = %.4f inches',x,y_max*12^3 /(E*I_xx));
