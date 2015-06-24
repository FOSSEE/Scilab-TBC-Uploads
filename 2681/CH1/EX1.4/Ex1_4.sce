//determine the charge Q at the point (2,0,0).
//given
clc
Q1=-10D-9//coulombs
epsilon0=8.85d-12//permitivity of free space
r1=[3 1 1]-[0 0 0]
r2=[3 1 1]-[2 0 0]
R1=norm(r1)//magnitude of the given vector r1
R2=norm(r2)//magnitude of vector r2
ar1=r1/R1//unit vector
ar2=r2/R2//unit vector
deff("[Qt]=electricfield(E)","Qt=((E-((Q1/(4*%pi*epsilon0*R1^2))*ar1(1,1)))/ar2(1,1))*(4*%pi*epsilon0*R2^2)")
Qt=electricfield(0)//in coulombs
Qt=round(Qt*1d+11)/1d+11///rounding off decimals
disp(Qt/1d-9,'the electrical field at the point [2,0,0] in nC')//nC
