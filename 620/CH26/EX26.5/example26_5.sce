v=120;
f=60;
i=5;
p=525;
z=v/i;
r=p/i^2;
x_l=sqrt(z^2-r^2);
l=x_l/(2*%pi*f);
disp("the inductance (in mH) of the coil is"); disp(l*10^3);