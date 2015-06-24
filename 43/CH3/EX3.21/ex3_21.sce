//Ex 3.21
clc;
z=%z;
x=ldiv(z^2,(z^3)-(1.7*(z^2))+0.8*z+0.1,3);
dims=1;
xo=[0];
y=cat(dims,xo,x);
//degree of Num polynomial And Den Polynomial must be same
// else Zeros are padded accordingly on the basis of Std Eq.
disp(y);