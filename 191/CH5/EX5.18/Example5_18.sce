//Gram - Schmidt process for cubic polynomial least squares approx
clc;
clear;
close();
format('v',8);
funcprot(0);

disp('The orthogonal functions : ')
x = poly(0,'x');
ph0 = 1;

disp(ph0 , 'phi0(x) = ');
K1_0 = -integrate('x','x',0,1)/integrate('ph0^2','x',0,1);
ph1 = x + K1_0*ph0;
disp(ph1 , 'phi1(x) = ');

K2_0 = -integrate('x^2*ph0','x',0,1)/integrate('ph0^2','x',0,1);
disp(K2_0 ,'K(2,0) = ');
K2_1 = -integrate('x^2*(x-.5)','x',0,1)/integrate('(x-.5)^2','x',0,1);
disp(K2_1 ,'K(2,1) = ');
ph2 = x^2 + K2_0*ph0 + K2_1*ph1;
disp(ph2 , 'phi2(x) = ');

K3_0 = -integrate('x^3*ph0','x',0,1)/integrate('ph0^2','x',0,1);
disp(K3_0 ,'K(3,0) = ');
K3_1 = -integrate('x^3*(x-.5)','x',0,1)/integrate('(x-.5)^2','x',0,1);
disp(K3_1 ,'K(3,1) = ');
K3_2 = -integrate('x^3*(x^2-x+1/6)','x',0,1)/integrate('(x^2-x+1/6)^2','x',0,1);
disp(K3_2 ,'K(3,2) = ');
ph3 = x^3 + K3_0*ph0 + K3_1*ph1 + K3_2*ph2;
disp(ph3 , 'phi3(x) = ');

deff('[y]=f(x)','y= exp(x)');
deff('[phi0]=ph_0(x)','phi0= horner(ph0,x)');
deff('[phi1]=ph_1(x)','phi1= horner(ph1,x)');
deff('[phi2]=ph_2(x)','phi2= horner(ph2,x)');
deff('[phi3]=ph_3(x)','phi3= horner(ph3,x)');
a0 = integrate('f(x)*ph_0(x)','x',0,1)/integrate('ph_0(x)^2','x',0,1);
disp(a0,'a0 = ');
a1 = integrate('f(x)*ph_1(x)','x',0,1)/integrate('ph_1(x)^2','x',0,1);
disp(a1,'a1 = ');
a2 = integrate('f(x)*ph_2(x)','x',0,1)/integrate('ph_2(x)^2','x',0,1);
disp(a2,'a2 = ');
a3 = integrate('f(x)*ph_3(x)','x',0,1)/integrate('ph_3(x)^2','x',0,1);
disp(a3,'a3 = ');

p3 = a0*ph0 + a1*ph1 + a2*ph2 +a3*ph3;
disp(p3 , 'p3(x)');