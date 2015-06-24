// sum 23-4
clc;
clear;
d=320;
r=d/2;
b=50;
u=0.3;
pmax=1;
c=115*2;
// From to fig. 23-9, distance OA=R is calculated.
R=sqrt(115^2+66.4^2);
C=115*2;
theta1=0;
theta2=120*%pi/180;
theta0=120*%pi/180;
thetamax=%pi/2;
Tr=u*pmax*b*r^2*(cos(theta1)-cos(theta2))/sin(thetamax)*10^-3;
//the notation 'r' is used for moments of right hand shoe, similarly 'l' for the left shoe.
Mfr=u*pmax*b*r*(4*r*(cos(theta1)-cos(theta2))+(R*(cos(2*theta1)-cos(2*theta2))))/(4*sin(thetamax))*10^-3;
Mpr=pmax*b*r*R*((2*theta0)-(sin(2*theta2)-(sin(theta1))))/(4*sin(thetamax))*10^-3;
F=(Mpr-Mfr)/c*10^3;
//Mpl+Mfl=F*c;
x=F*c*10^-3;
y=(Mpr/pmax)+(Mfr/pmax);
pmax2=x/y;
Tl=pmax2*Tr;
Mpl=pmax2*Mpr;
Mfl=pmax2*Mfr;
T=Tl+Tr;

  // printing data in scilab o/p window
  printf("Tr is %0.0f Nm ",Tr);
  printf("\n Mf is %0.2f Nm ",Mfr);
  printf("\n Mp is %0.2f Nm ",Mpr);
  printf("\n Tl is %0.1f Nm ",Tl); 
  printf("\n Mfl is %0.2f Nm ",Mfl);
  printf("\n Mpl is %0.2f Nm ",Mpl);
  printf("\n F is %0.1f N ",F);
  printf("\n T is %0.1f Nm ",T);
  
  //The difference in the answers are due to rounding-off of values.
  
  
