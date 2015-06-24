//Scilab Code for Example 2.38(ii) of Signals and systems by
//P.Ramakrishna Rao
//Inverse Z Transform:ROC |z|>2
clear;
clc;
z = %z;
syms n z1;
//To find out Inverse z transform z must be linear z = z1
X  =(z+1)/(z^2+5*z+4)
X1 = denom(X);
zp = roots(X1)
X1 = 1/(z1+4);
F1 = X1*(z1^(n))*(z1-zp(1));
h1 = limit(F1,z1,zp(1))
disp(-(h1)*'u(-n-1)','h[n]=');
////Result
//  h[n]= (- (- 4)^n)*u(-n-1)
