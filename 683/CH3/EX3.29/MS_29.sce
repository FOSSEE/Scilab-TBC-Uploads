// sum 3-29
clc;
clear;
R1=50;
R2=200;
N=6*10^3;
w=2*%pi*N/60;
v=0.28;
rho=7800*10^-9;
g=9810;
k1=(3+v)/8;
k2=(1+(3*v))/8;
W=rho*9.81;
x=k1*w^2*W*(R1^2+R2^2)/g;
y=k1*w^2*W*(R1*R2)^2/g;
y1=k1*w^2*W/g;
z=k2*w^2*W/g;
r=sqrt(R1*R2);
sigrmax=x-(y/r^2)-(r^2*y1);
r=50:200
n=length(r);
for i=1:n
    sigr(i)=x-(y/r(i)^2)-(r(i)^2*y1)
end

for j=1:n
    sigc(j)=x+(y/r(j)^2)-(r(j)^2*z)
end

plot (r,sigr);
plot (r,sigc);
xtitle('','r mm');
ylabel('stress  N/mm^2');
xgrid(2);

  // printing data in scilab o/p window
  printf("sigrmax is %0.1f MPa  ",sigrmax);