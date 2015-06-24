//Scilab Code for Example 8.5 of Signals and systems by
//P.Ramakrishna Rao
//Second Order System
clear;
clc;
z = %z;
syms n z1;
X  =z^2/(z-0.5)^2
disp(X,'(i) System Function is:');
X1 = denom(X);
zp = roots(X1);
X1 = z1^2/(z1-0.5)^2;
F1 = X1*(z1^(n-1))*(z1-0.5)^2;
h1 = limit(F1,z1,zp(1));
h = h1;
disp('(iii) Unit step response sequence:')
disp(h*"u(n)",'h[n]=');
for n=0:20;
    w1(n+1)=1-(0.5)^n;
end
n=0:20;
plot(n,w1);
title('(ii)    Unit Sample Response Sequence');
disp('where z=e^jw ',X,'(iv) Transfer Function (H(e^jw))is:');
