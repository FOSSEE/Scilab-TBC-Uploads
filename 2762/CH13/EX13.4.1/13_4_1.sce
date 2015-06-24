//Transport Processes and Seperation Process Principles
//Chapter 13
//Example 13.4-1
//Membrane Seperation Processes
//given data
pda=50e-10;
pdb=5e-10;
alphastar=pda/pdb;
a=1-alphastar;
ph=80;
p1=20;
x0=0.25;
b=(ph/p1)*(1-x0)-1+(alphastar*(ph/p1)*x0)+alphastar;
c=-alphastar*(ph/p1)*x0;
yp=(-b+sqrt(b*b-4*a*c))/(2*a);//permeate composition
xf=0.5;
theta=(xf-x0)/(yp-x0);//fraction permeated
qf=10000;
t=2.54e-3;
Am=(theta*qf*yp)/((pda/t)*(ph*x0-p1*yp));//membrane area
mprintf("1. permeate composition= %f",yp)
mprintf(" 2. fraction permeated= %f",theta)
mprintf(" 3. membrane area=%f m2",Am)
