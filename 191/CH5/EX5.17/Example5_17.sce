//Gram - Schmidt process for finding orthogonal functions
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

