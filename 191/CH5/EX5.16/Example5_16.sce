//Least square approximation to continuous functions 
clc;
clear;
close();
format('v',8);
funcprot(0);
deff('[g]=f(x,y)','g= -y^2/(1+x)');
disp('approximation of e^x on [0,1] with a uniform weight w(x)=1')
a11 = integrate('1','x',0,1);
a12 = integrate('x','x',0,1);
a13 = integrate('x*x','x',0,1);
a14 = integrate('x^3','x',0,1);
a21 = integrate('x','x',0,1);
a22 = integrate('x^2','x',0,1);
a23 = integrate('x^3','x',0,1);
a24 = integrate('x^4','x',0,1);
a31 = integrate('x^2','x',0,1);
a32 = integrate('x^3','x',0,1);
a33 = integrate('x^4','x',0,1);
a34 = integrate('x^5','x',0,1);
a41 = integrate('x^3','x',0,1);
a42 = integrate('x^4','x',0,1);
a43 = integrate('x^5','x',0,1);
a44 = integrate('x^6','x',0,1);

c1 = integrate('exp(x)','x',0,1);
c2 = integrate('x*exp(x)','x',0,1);
c3 = integrate('x^2*exp(x)','x',0,1);
c4 = integrate('x^3*exp(x)','x',0,1);

A = [a11 a12 a13 a14;a21 a22 a23 a24;a31 a32 a33 a34;a41 a42 a43 a44];
C = [c1;c2;c3;c4];
ann = inv(A)*C;
disp(ann, 'The coefficients a0,a1,a2,a3 are respectively :  ' );

deff('[px]=p3(x)','px=ann(4)*x^3+ann(3)*x^2+ann(2)*x+ann(1)');
x = [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]';
e = exp(x);
p = p3(x);
err = e-p;
ann = [x e p err];

disp(ann,'Displaying the value of x exp(x) p3(x) exp(x)-p3(x) :');
plot(x,err);
plot(x,0);