// Problem no 10.5,Page No.256

clc;clear;
close;

BC=6 //m

//Calculations

AB=2*BC*(3**0.5)**-1

//Taking moment about B we get
R_A=-(-2000*3-1000*6)*(12*(3**0.5)**-1)**-1 //reaction at the roller support A

//The resultant of all the three Loads is 4000 N acting at right angle to BC at D

//Resolving it vertically we have
V=4000*sin(60*%pi*180**-1)

//Resolving it horizontal we have
H=4000*cos(60*%pi*180**-1)

//Applying the summation of vertical forces  we get
R_B_v=V-R_A

//Applying the summation of horizontal  forces  we get
R_B_h=H
R_B=((R_B_v)**2+(R_B_h)**2)**0.5

tan_theta=R_B_v*R_B_h**-1

//Joint B

//Applying the summation of vertical forces  we get
F_BD=1000*(3**0.5)*2

//Applying the summation of horizontal  forces  we get
F_BE=R_B_h+F_BD*cos(30*%pi*180**-1)

//Joint D
F_DE=2000 //N
F_CD=F_BD

//Consider equilibrium of truss to the Left of section 2-2
F_CE=R_A*AB*(sin(30*%pi*180**-1)*6)**-1

//Joint A

//Applying the summation of vertical forces  we get
F_AC=R_A*(sin(60*%pi*180**-1))**-1

//Applying the summation of horizontal  forces  we get
F_AE=F_AC*cos(60*%pi*180**-1)

//Result
printf("Forces in Each members are as follows:F_BD %.2f",F_BD);printf(" KN(compression)")
printf("\n                                      :F_BE %.2f",F_BE);printf(" KN(Tension)")
printf("\n                                      :F_DE %.2f",F_DE);printf(" KN(compression)")
printf("\n                                      :F_CD %.2f",F_CD);printf(" KN(compression)")
printf("\n                                      :F_CE %.2f",F_CE);printf(" KN(Tension)")
printf("\n                                      :F_AC %.2f",F_AC);printf(" KN(compression)")
printf("\n                                      :F_AE %.2f",F_AE);printf(" KN(Tension)")
