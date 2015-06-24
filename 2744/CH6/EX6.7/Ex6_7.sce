clear;
clc;
l = 20;// feet
b = 4;// feet
W = 5;// tons
d = 12;// inches
h = 5;// inches
I_xx = 220;// in^4
E = 13000;// tons/in^2
a = l-b;// feet
//for maximum deflection
x = sqrt((a^2 + 2*a*b)/3);// feet
y_max = x*12^3 *((a^2 + 2*a*b) - x^2)/(6*E*I_xx);// inches
//for deflection at the centre
x1 = 0.5*l;// inches
y_x1 = x1*12^3 *((a^2 + 2*a*b) - x1^2)/(6*E*I_xx);// inches
printf('The position of maximum deflection occurs at x = %.2f feet\n The maximum deflection is, y_max = %.4f inches',x,y_max);
printf('\n The deflection at the centre, y_%d = %.4f inches',x1,y_x1);
