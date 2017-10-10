// SAMPLE PROBLEM 6/5
clc;funcprot(0);
// Given data
r=6/12;// ft
mu_s=0.15;// The coefficients of static friction
mu_k=0.12;// The coefficients of kinetic friction
theta=20;// degree
g=32.2;// The acceleration due to gravity in ft/sec^2
x=10;// ft

// Calculation
// SigmaF_x=m*abar_x----> mg*sind(theta)-F=m*abar
// SigmaF_x=m*abar_y----> N-mg*cosd(theta)=0
// SigmaM_G=Ibar*alpha---> F*r=m*r^2*alpha
abar=(g/2)*sind(theta);// ft/sec^2
// SigmaM_G=Ibar*alpha+m*abar*d----->mgr*sin(theta)=mr^2*(abar/r)+ m*abar*r
// From the above equations,we solve using the coefficients of mg
F=sind(theta)-(sind(theta))/2;// N
N=cosd(theta);// N
F_max=mu_s*N;// N
F=mu_k*N;// N
// SigmaF_x=m*abar_x
abar=(sind(theta)-F)*g;// ft/sec^2
alpha=(F*g)/r;// rad/sec^2
t=sqrt((2*x)/abar);// sec
printf("\nThe angular acceleration of the hoop,alpha=%1.2f ft/sec^2 \nThe time t for the hoop to move a distance of 10 ft down the incline,t=%1.3f sec",alpha,t);
