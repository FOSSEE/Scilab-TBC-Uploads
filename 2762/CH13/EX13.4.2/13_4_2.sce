//Transport Processes and Seperation Process Principles
//Chapter 13
//Example 13.4-2
//Membrane Seperation Processes
//given data
theta=0.2;//fraction cut
p1=19;//pressure selected for use
ph=190;//pressure selectred for use
alphas=10
a1=theta+(p1/ph)-(theta*(p1/ph))-(alphas*theta)-(alphas*(p1/ph))+(alphas*(p1/ph)*theta);
xf=0.209;//feed composition
b1=1-theta-xf-(p1/ph)+(theta*(p1/ph))+(alphas*theta)+(alphas*(p1/ph))-(alphas*(p1/ph)*theta)+alphas*xf;
c1= -alphas*xf;
yp=(-b1+sqrt(b1*b1-4*a1*c1))/(2*a1);//permeate composition
x0=(xf-theta*yp)/(1-theta);//outlet reject composition
qf=1000000;//feed rate
Pad=500e-10;
t=2.54e-3;
Am=(theta*qf*yp)/((Pad/t)*(ph*x0-p1*yp));//area of membrane
mprintf("the permeate composition= %f ",yp)
mprintf("outlet reject composition= %f ",x0)
mprintf("area of membrane= %f cm2",Am)
