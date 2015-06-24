//Example 4.1
//Critical Resolved Shear Stress for Slip
//Page No. 125
clc;clear;close;

a=[1,-1,0];              //no unit
n=[1,-1,-1];              //no unit
s=[0,-1,-1];              //no unit
Tr=6;                 //in MPa
cos_fi=sum(a.*n)/(sqrt(a(1)^2+a(2)^2+a(3)^2)*sqrt(n(1)^2+n(2)^2+n(3)^2));
cos_lm=sum(a.*s)/(sqrt(a(1)^2+a(2)^2+a(3)^2)*sqrt(s(1)^2+s(2)^2+s(3)^2));
sigma=Tr/(cos_fi*cos_lm);
printf('Tensile Stress applied = %g MPa',sigma);
