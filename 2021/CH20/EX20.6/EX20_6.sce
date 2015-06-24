//Finding of Maximum Speed
//Given
D=0.125;
L=0.3;
hs=4.5;
ds=0.075;
l=6.8;
h=2.6;
g=9.81;
H=10.3;
//TO Find
A=(%pi/4)*D^2;
a=(%pi/4)*(ds)^2;
r=L/2;
ha=H-h-hs;
Z=(ha*g*a)/(l*A*r);
Z1=sqrt(Z);
N=(Z1*60)/(2*%pi);
disp("Maximum Speed ="+string(N)+" rpm");
