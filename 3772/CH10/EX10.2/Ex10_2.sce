// Problem no 10.2,Page No.250

clc;clear;
close;

//Taking moment at Pt A we get
R_B=100*8*4**-1

//Applying the summation of vertical forces  we get
R_AV=-R_B

//Applying the summation of horizontal forces  we get
R_H=100

//joint B

//Applying the summation of vertical forces  we get
F_CB=R_B

//Applying the summation of horizontal forces  we get
F_AB=0 //As there is no force to balance in horizontal direction

//joint A

//Applying the summation of horizontal forces  we get
F_AC=R_H*(cos(45*%pi*180**-1))**-1

//Applying the summation of vertical forces  we get
F_AD=200-F_AC*sin(45*%pi*180**-1)

//joint C

//Applying the summation of vertical forces  we get
F_EC=200-F_AC*cos(45*%pi*180**-1)

//Applying the summation of horizontal  forces  we get
F_DC=F_AC*cos(45*%pi*180**-1)

//joint D

//Applying the summation of horizontal  forces  we get
F_DE=F_DC*(cos(45*%pi*180**-1))**-1

//DF and EF are null members at this joint as each member individually has nothing to balance
F_DF=0
F_EF=0

//Result
printf("The Forces in Each members are as follows:F_AB = %.1f kN",F_AB)
printf("\n                                          :F_CB = %.1f kN (compressive)",F_CB)
printf("\n                                          :F_AC %.2f",F_AC);printf(" KN(Tensile)")
printf("\n                                          :F_AD=%.1f kN (Tensile)",F_AD)
printf("\n                                          :F_EC=%.1f kN N(Compressive)",F_EC)
printf("\n                                          :F_DC=%.1f kN N(Compressive)",F_DC)
printf("\n                                          :F_DE %.2f",F_DE);printf(" KN(Tensile)")
printf("\n                                          :F_DF = %.f kN",F_DF)
printf("\n                                          :F_EF = %.f kN",F_EF)
