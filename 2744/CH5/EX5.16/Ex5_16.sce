clear;
clc;
b1 = 6;//inches
d1 = 1;//inch
b2 = 9;//inches
d2 = 1;//inch
b3 = 10;//inches
d3 = 2;//inch
a1 = b3*d3;// in^2
y1 = d3/2;// inches
a2 = b2*d2;// in^2
y2 = d3 + b2/2;// inches
a3 = b1*d1;// in^2
y3 = b2+d3+d1/2;// inches
y_bar = (a1*y1+a2*y2+a3*y3)/(a1+a2+a3);//inches
I_AB = (1/3)*b3*d3^3 + (1/12)*d2*b2^3 +b2*(d3+b2/2)^2 + (1/12)*b1*d1^3 + b1*(b2+d3+d1/2)^2;// in^4
I_xx = I_AB - (a1+a2+a3)*y_bar^2;// in^4
I_yy = (1/12)*(d3*b3^3 + b2*d2^3 +d1*b1^3);// in^4
printf('The c.g of the section is y_bar = %.3f inches',y_bar);
printf('\n I_xx = %.2f in^4\n I_yy = %.2f in^4',I_xx,I_yy);

//Example 16(a)
l = 20;// feet
y_t = y_bar;// inches
y_c = d1+b2+d3-y_t;// inches
f_t = 1.5;// tons/in^2
f_c = y_c*f_t/y_t;// tons/in^2
M_r = f_c*I_xx/y_c;// ton-inches
W = M_r*8/(l*12);// tons
w = W/l;// ton per foot run
printf('\n\n  Load required is w = %.2f ton per foot run',w);
