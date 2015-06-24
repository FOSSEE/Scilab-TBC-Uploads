//example 6.20
//double integration
//page 247
clc;clear;close;
deff('z=f(x,y)','z=exp(x+y)');
h0=0.5,k0=0.5;
h=[0 0.5 1];,k=[0 0.5 1];
for i=1:3
    for j=1:3
      x(i,j)=f(h(i),k(j));
    end
end
T_area=h0*k0*(x(1,1)+4*x(1,2)+4*x(3,2)+6*x(1,3)+x(3,3))/4//trapezoidal method
printf('the integration value by trapezoidal method  is %f\n ',T_area);
S_area=h0*k0*((x(1,1)+x(1,3)+x(3,1)+x(3,3)+4*(x(1,2)+x(3,2)+x(2,3)+x(2,1))+16*x(2,2)))/9
printf('the integration value by Simpson method  is %f',S_area);
