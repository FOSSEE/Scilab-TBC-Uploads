clc;
m=1000;//kg, mass of krate
theta=60;//degree
theta=theta*%pi/180;//radians, conversion into rad
a=0.70;//m
L=3.20;//m
g=9.81;//m/s^2
//From theory we get
W=m*g;//N, Weight
W=W/1000;//kN, conversion into kN
S=sqrt(a^2+L^2-2*a*L*cos(theta));//m
F_DH=W*S/L/tan(theta);//kN

printf("Force exerted by each cylinder is F_DH=%.2f kN",F_DH);
