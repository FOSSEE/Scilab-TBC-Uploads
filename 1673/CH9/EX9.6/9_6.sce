//bender-schmidt formula
//example 9.6
//page 362
clc;clear;close;
deff('y=f(x)','y=4*x-x^2');
u=[f(0) f(1) f(2) f(3) f(4)];
u11=(u(1)+u(3))/2;
u12=(u(2)+u(4))/2;
u13=(u(3)+u(5))/2;
printf(' u11=%0.2f\t  u12=%0.2f\t  u13=%0.2f\t \n',u11,u12,u13)
u21=(u(1)+u12)/2;
u22=(u11+u13)/2;
u23=(u12+0)/2;
printf(' u21=%0.2f\t  u22=%0.2f\t  u23=%0.2f\t \n',u21,u22,u23)
u31=(u(1)+u22)/2;
u32=(u21+u23)/2;
u33=(u22+u(1))/2;
printf(' u31=%0.2f\t  u32=%0.2f\t  u33=%0.2f\t \n',u31,u32,u33)
u41=(u(1)+u32)/2;
u42=(u31+u33)/2;
u43=(u32+u(1))/2;
printf(' u41=%0.2f\t  u42=%0.2f\t  u43=%0.2f\t \n',u41,u42,u43)
u51=(u(1)+u42)/2;
u52=(u41+u43)/2;
u53=(u42+u(1))/2;
printf(' u51=%0.2f\t  u52=%0.2f\t  u53=%0.2f\t \n',u51,u52,u53)