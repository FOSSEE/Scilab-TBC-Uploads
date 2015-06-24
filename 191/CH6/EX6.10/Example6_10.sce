//Simpson's Adaptive Quatrature
clc;
clear;
close();
format('v',7);
funcprot(0);
deff('[y]=f(x)','y=exp(-3*x)*sin(3*x)');
e = 0.0005;
a = 0;
b = %pi;
h = (b-a)/2;

S1 = h*(f(a)+4*f((a+b)/2)+f(b))/3;
disp(S1,'S1 : ');
S2 = h*(f(a)+4*f((3*a+b)/4)+2*f((a+b)/2)+4*f((a+3*b)/4)+f(b))/6;
disp(S2,'S2 : ');

err = abs(S2-S1)/15;
disp(err,'|S2-S1|>15e so [0.%pi] must be subdivided ' );

a = (a+b)/2;
h = (b-a)/2;
S1 = h*(f(a)+4*f((a+b)/2)+f(b))/3;
disp(S1,'S1 : ');
S2 = h*(f(a)+4*f((3*a+b)/4)+2*f((a+b)/2)+4*f((a+3*b)/4)+f(b))/6;
disp(S2,'S2 : ');
s = S2;
disp (abs(S2-S1),'|S2-S1|<15e/2 ');

b = a;
a = 0;
h = (b-a)/2;

S1 = h*(f(a)+4*f((a+b)/2)+f(b))/3;
disp(S1,'S1 : ');
S2 = h*(f(a)+4*f((3*a+b)/4)+2*f((a+b)/2)+4*f((a+3*b)/4)+f(b))/6;
disp(S2,'S2 : ');

err = abs(S2-S1)/15;
disp(err,'|S2-S1|>15e so interval must be subdivided ' );

a = (a+b)/2;
h = (b-a)/2;
S1 = h*(f(a)+4*f((a+b)/2)+f(b))/3;
disp(S1,'S1 : ');
S2 = h*(f(a)+4*f((3*a+b)/4)+2*f((a+b)/2)+4*f((a+3*b)/4)+f(b))/6;
disp(S2,'S2 : ');
s = s+S2;
disp (abs(S2-S1),'|S2-S1|<15e/4 ');

b = a;
a = 0;
h = (b-a)/2;

S1 = h*(f(a)+4*f((a+b)/2)+f(b))/3;
disp(S1,'S1 : ');
S2 = h*(f(a)+4*f((3*a+b)/4)+2*f((a+b)/2)+4*f((a+3*b)/4)+f(b))/6;
disp(S2,'S2 : ');

err = abs(S2-S1)/15;
disp(err,'|S2-S1|>15e so interval must be subdivided ' );

a = (a+b)/2;
h = (b-a)/2;
S1 = h*(f(a)+4*f((a+b)/2)+f(b))/3;
disp(S1,'S1 : ');
S2 = h*(f(a)+4*f((3*a+b)/4)+2*f((a+b)/2)+4*f((a+3*b)/4)+f(b))/6;
disp(S2,'S2 : ');
s = s+S2;
disp (abs(S2-S1),'|S2-S1|<15e/8 ');

b = a;
a = 0;
h = (b-a)/2;

S1 = h*(f(a)+4*f((a+b)/2)+f(b))/3;
disp(S1,'S1 : ');
S2 = h*(f(a)+4*f((3*a+b)/4)+2*f((a+b)/2)+4*f((a+3*b)/4)+f(b))/6;
disp(S2,'S2 : ');
disp (abs(S2-S1),'|S2-S1|<15e/8 ');
s = s+S2;
disp(s);