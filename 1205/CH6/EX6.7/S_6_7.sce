clc;
//Part 1
printf("By theoritical calculation we getb F_DH=W*cos(theta)/sin(theta)\n");
printf("Therefore result obtained is independant of d\n");
//Given data

a=0.70;//m
theta=60;//degree
theta=theta*%pi/180;//radian, conversion into radian
L=3.20;//m
m=1000;//kg, mass of crate
g=9.81;//m/s^2, acceleration due to gravity

DH=sqrt(a^2+L^2-2*a*L*cos(theta));//m, by cosine rule
W=m*g;//N, wight of crate
W=W/1000;//kN, conversion into kN
//Recalling equation got from theoritical part
EH=L;//m
F_DH=W*DH/EH/tan(theta);//kN, Force exerted by cylinder

printf("Force exerted by each cylinder is F_DH=%.2f kN \n",F_DH);
