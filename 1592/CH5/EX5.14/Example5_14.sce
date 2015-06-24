//Scilab Code for Example 5.14 of Signals and systems by
//P.Ramakrishna Rao
//Circular Convolution
clear;
clc;
close;
//First Causal sequence
x=[1,1,1,1;1,-%i,-1,%i;1,-1,1,-1;1,%i,-1,-%i]
y1=[1;2;3;4];
y2=[4;3;2;1];
X=x*y1;
disp(X,'Vector X(0)-->X(3)')
Y=x*y2;
disp(Y,'Vector Y(0)-->Y(3)')
for n=1:4;
    Z(n,1)=X(n,1)*Y(n,1);
end
q=4*x^-1;
disp(q,'IDFT matrix ');
z=0.25*q*Z;
disp(z,'IDFT of Vector Z(0)-->Z(3)')
