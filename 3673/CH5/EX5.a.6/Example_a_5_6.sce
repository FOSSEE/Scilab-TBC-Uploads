//Example_a_5_6 page no:206
clc;
V=100;
f=50;
R=50;
C=100*10^-6;
Xc=1/(2*%pi*f*C);
Bc=1/Xc;
G=1/R;
Y=sqrt(G^2+Bc^2);
Z=1/Y;
theta=atand(R/Xc);
disp(Z,"the impedence in the circuit is (in ohm)");
disp(theta,"the phase angle in the circuit is (in degree)");
//the impedence value varies slightly with text book due to round off values in text book, hence both answers are same
