//Scilab Code for Example 2.38(i) of Signals and systems by
//P.Ramakrishna Rao
//Inverse Z Transform:ROC |z|>2
clear;
clc;
z = %z;
syms n z1;
//To find out Inverse z transform z must be linear z = z1
X  =z^2/(z^2+3*z+2);
X1 = denom(X);
zp = roots(X1)
X1 = z1^2/(z1^2+3*z1+2);
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
h1 = limit(F1,z1,zp(1));
disp(h1*'u(n)','h1[n]=')
h2 = limit(F2,z1,zp(2));
disp((h2)*'u(n)','h2[n]=');
disp((h1)*'u(n)'+(h2)*'u(n)','h[n]=');
////Result
//  h[n]= (2(- 2)^n+1 - (- 1)^n)*u(n)
