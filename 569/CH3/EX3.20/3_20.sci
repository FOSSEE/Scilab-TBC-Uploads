//Calculate the error and percentage error in the measurement of deflection
clc;
l=0.2;
E=200*10^9;
b=20*10^-3;
d=5*10^-3;
D=(4*l^3)/(E*b*d^3);
F=1*9.81;
x_true= D*F;
disp(x_true,'True value of deflection')
x_indicated=D*10.31/(1+.1*D);
disp(x_indicated,'Indicated value of deflection')
Er=x_indicated-x_true;
disp(Er,'error=')
Er_percentage=Er*100/x_true;
disp(Er_percentage,'Percentage error=')
