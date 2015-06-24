//Scilab Code for Example 2.39 of Signals and systems by
//P.Ramakrishna Rao
//Inverse Z Transform:ROC |z|>2
clear;
clc;
z = %z;
syms n z1;
//To find out Inverse z transform z must be linear z = z1
X  =2/(z^-1+2);
X1 = denom(X);
zp = roots(X1)
X1 =z1/(z1+0.5);
F1 = X1*(z1^(n-1))*(z1-zp(1));
h1 = limit(F1,z1,zp(1))
disp(-(h1)*'u(-n-1)','h[n]=');
////Result
//  h[n]= (- (- 0.5)^n)*u(-n-1)
