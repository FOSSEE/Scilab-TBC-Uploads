clc();
clear;
//To calculate the pitch of the helix and radius of trajectory
v=2*10^6;                      //speed in m/s
teta=30;                       //angle at which proton enters  at the origin of coordinate system
B=0.3;                         //magnetic field in iT
vp=v*sind(teta);               //v(perpendicular component)
vpa=v*cosd(teta);              //v(parallel component)
m=1.67*10^-27;                 //mass of proton
q=1.6*10^-19;
p=(vpa*2*%pi*m)/(q*B)         //pitch of the helix described by the proton
R=((m*vp)/(q*B))*10^2         //radius of the trajectory
printf("the pitch of the helix is %f m and radius of trajectory is %f cm",p,R)