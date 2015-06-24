clear;
clc;
syms n z;
x1=(1/2)^n;
X1=symsum(x1*(z^-n),n,0,%inf)
x2=3^-n;
X2=symsum(x2*(z^-n),n,0,%inf)
X=X1+X2
z=%s;
XX=%s;
XX=z/(z-.5)+z/(z-(1/3));
plzr(XX)
a=denom(XX)
b=roots(a)
i=1;
for theta=0:1/50:360 
    rx(i)=.5*cos(theta);
    ry(i)=.5*sin(theta);
    i=i+1;
end
plot(rx,ry)
// the region outside blue circle indicates roc