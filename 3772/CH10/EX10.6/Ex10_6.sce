// Problem no 10.6,Page No.258

clc;clear;
close;

//Calculations

//Taking moment of the Forces about the hinge A
P=1000*2**0.5*1.2*(0.9)**-1

//Let R_AH be the Horizontal component of the reaction at A
R_AH=P-1000*2**0.5
R_A=((R_AH)**2+(1000*2**0.5)**2)**0.5

//Resolving the forces vertically we get
R_AV=1000*2**0.5 //vertical component of the reaction at A

//joint A

//Resolving vertically we get
F_BA=1000*2**0.5*(sin(30*%pi*180**-1))**-1

//Resolving horizontally we get
F_AD=2000*2**0.5*3**0.5*2**-1-1000*2**0.5*3**-1 //N

//Joint C

BD=1.2*sin(30*%pi*180**-1)
BE=0.6*sin(30*%pi*180**-1)
ED=0.6*cos(30*%pi*180**-1)
CE=0.9-0.52

theta=atan(BE*CE**-1)*(180*%pi**-1)

F_CB=P*(sin(38.29*%pi*180**-1))**-1

//Resolving vertically
F_CD=F_CB*cos(theta*%pi*180**-1)

//Joint D

//Resolving horizontally
F_DB=(F_AD-1000*2**0.5)*(cos(60*%pi*180**-1))**-1

//Result
printf("The Pull in chain is %.2f",P);printf(" N")
printf("\n Force in the each members are as follows:F_BA %.2f",F_BA);printf(" KN(compressive)")
printf("\n                                         :F_AD %.2f",F_AD);printf(" KN(Tensile)")
printf("\n                                         :F_CB %.2f",F_CB);printf(" KN(compression)")
printf("\n                                         :F_CD %.2f",F_CD);printf(" KN(Tensile)")
printf("\n                                         :F_DB %.2f",F_DB);printf(" KN(compressive)")
