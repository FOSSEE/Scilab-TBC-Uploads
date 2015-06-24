//inverse transform of sequences
//(a)X(z)=3z^-1+5z^-3+2z^-4
z=%z;
X1=[3*z^-1;0;5*z^-3;2*z^-4];
n1=1:4;
ZI=z^n1';
x1=numer(X1.*ZI);
disp(x1,"x[n]=");
//(b)X(z)=2z^2-5z+5z^-1-2z^-2
X2=[2*z^2;-5*z;0;5*z^-1;-2*z^-2];
n2=-2:2;
ZI=z^n2';
x2=numer(X2.*ZI);
disp(x2,"x[n]=");