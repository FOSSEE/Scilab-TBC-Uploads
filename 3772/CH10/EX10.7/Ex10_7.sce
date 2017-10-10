// Problem no 10.7,Page No.261
clc;
clear;
close;


//Calculations

theta=atan(1*2**-1)*(180*%pi**-1) //Radian

//Taking moment about A
R_EH=10*8*4**-1

//Horizontal component of reaction at A
R_AH=20 //KN

//Applying the summation of horizontal  forces  we get
F_AB=20*cos(theta*%pi*180**-1)**-1

//Applying the summation of vertical forces  we get
R_AV=10*5**0.5*sin(theta*%pi*180**-1)

//Vertical Reaction at E
R_EV=0

//Joint C

//Applying the summation of vertical forces  we get
F_DC=10*sin(theta*%pi*180**-1)**-1

//Applying the summation of horizontal  forces  we get
F_CB=F_DC*cos(theta*%pi*180**-1)

//Joint D

//Applying the summation of vertical forces  we get
F_DB=F_DC*sin(theta*%pi*180**-1)

//Applying the summation of horizontal  forces  we get
F_DE=F_DC*cos(theta*%pi*180**-1)

//Joint E

//Applying the summation of vertical forces  we get
F_EB=R_EV*sin(theta*%pi*180**-1)

//Result
printf("Forces in Each members are as follows:F_AB %.2f",F_AB);printf(" KN(Tensile)")
printf("\n                                      :F_DC %.2f",F_DC);printf(" KN(compression)")
printf("\n                                      :F_CB %.2f",F_CB);printf(" KN(Tensile)")
printf("\n                                      :F_DB %.2f",F_DB);printf(" KN(Tensile)")
printf("\n                                      :F_DE %.2f",F_DE);printf(" KN(compression)")
printf("\n                                      :F_EB %.2f",F_EB);printf(" KN")
