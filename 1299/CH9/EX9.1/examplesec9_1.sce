//Example sec 9.1
//compensation in open loop control system
clear;clc;
xdel(winsid());

s=%s;
disp("G=(60*k)/s*(s+1)*(s+6)")
//velocity error constant "Kv" when unit ramp input is applied to G is "5k".
//If "k=1",then,steady state error is 0.2.
// when "k=35/60" G becomes 

num=35;
den=s*(s+2)*(s+6);
G1=syslin('c',num,den);
subplot(1,2,1);
evans(G1)
// From the figure 9.1
OA=sqrt((0.3)^2+(2.8)^2);
wn1=OA
theta=84 // analytically calculated
zeta1=cosd(theta)
Ts1=4/(zeta1*wn1) // Ts1=settling time in seconds
//For zeta to be 0.6 and settling time less than 0.4 sec
a=acosd(0.6)
//By drawing angle "a" on the root locus 
OB=1.26;
wn2=OB; 
Ts2=4/(0.6*1.26) //in seconds
k=10.5/60;
//substituting "s=0" and "60k=10.5" in the equation for G.
Kv1=10.5/12 //Kv= velocity error coefficient
Ess1= 1/Kv1  //Ess= steady state error
//To get the required value of the zeta, steady state error increases and settling time improves.

//inserting one zero in the expression for "G"
disp("G2=60*k*(s+3)/s*(s+2)*(s+6)")
//considering k=1
num1=60*(s+3);
den1=(s*(s+1)*(s+6));
G3=syslin('c',num1,den1);
subplot(1,2,2);
evans(G3);
//considering "zeta=0.6" and drawing line OA at an angle 53.13, on the root locus.
zeta=0.6;
OA1=3.4;
wn=OA1
K=16/60
Kv=(60*K*3)/(2*6)
Ts=4/(zeta*wn) //in seconds
Ess=1/Kv
