clear;
clc;
k=.1;
n=4;
for i=1:4
    z(i)=2*cosh((i-.5)*sqrt(k))*sinh(.5*sqrt(k))/sinh(n*sqrt(k));
end
mprintf("v1= %.3fV, v2= %.3fV, v3= %.3fV, v4= %.3fV", z(1), z(2), z(3), z(4))
