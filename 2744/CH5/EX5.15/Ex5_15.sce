clear;
clc;
b = 5;// inches
d = 4;// inches
t = 1/2;// inches
a1 = b*t;// in^2
x1 = t/2;// inches
y1 = b/2;// inches
a2 = (d-t)*t;// in^2
y2 = t/2;// inch
x2 = t + 0.5*(d-t);// inches
x_bar = (a1*x1+a2*x2)/(a1+a2);// inches
y_bar = (a1*y1+a2*y2)/(a1+a2);// inches
I_AB = (1/3)*t*b^3 + (1/3)*(d-t)*t^3;// in^4
I_xx = I_AB - (a1+a2)*y_bar^2;// in^4
I_yy = (1/3)*t*d^3 + (1/3)*(b-t)*t^3 - (a1+a2)*x_bar^2;// in^4
printf('The position of c.g is x_bar = %.3f inches, y_bar = %.2f inches',x_bar,y_bar);
printf('\n I_xx = %.3f in^4\n I_yy = %.2f in^4',I_xx,I_yy);



//Example 15(a)
l = 12;// feet
y_c = y_bar;//inches
y_t = b - y_c;//inches
f_t_max = 7;// tons/in^2
f_c = y_c*f_t_max/y_t;// tons/in^2
M_r = f_t_max*I_xx/y_t;// ton-inches
W = M_r/(l*12/8);// tons
printf('\n \n Total uniformly distribute load over the span is W = %.2f tons',W);

