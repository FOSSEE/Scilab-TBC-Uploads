//Scilab Code for Example 8.4 of Signals and systems by
//P.Ramakrishna Rao
//Second Order System
clear;
clc;
z = %z;
syms n z1;
X  =(z-1)/((z+(1/2))*(z-(1/5)))
disp(X,'(i) System Function is:');
X1 = denom(X);
zp = roots(X1);
X1 = (z1-1)/((z1+(1/2))*(z1-(1/5)));
F1 = X1*(z1^(n-1))*(z1-zp(1))
F2 = X1*(z1^(n-1))*(z1-zp(2))
h1 = limit(F1,z1,zp(1))
h2 = limit(F2,z1,zp(2))
h = h1+h2;
disp('(iv) Unit sample response sequence:')
disp(h*"u(n)",'h[n]=');
for n=0:10;
    w(n+1)=(- 5.714*(0.2)^n- 4.285*(- 0.5^n));
end
n=0:10;
plot(n,w);
title('(iii)    Unit Sample Response Sequence');
disp('where z=e^jw ',X,'(i) Transfer Function is:');
