// Problem no 10.3,Page No.252

clc;clear;
close;

//taking moment at pt A we get
R_D=(90*6+120*3)*9**-1 //Reaction at Pt D

//Joint D

//Applying the summation of vertical forces  we get
F_GD=100*(sin(60*%pi*180**-1))**-1

//Applying the summation of horizontal  forces  we get
F_DC=F_GD*cos(60*%pi*180**-1)

//Joint G

//Applying the summation of vertical forces  we get
F_GC=F_GD

//Applying the summation of horizontal  forces  we get
F_FG=F_GD*cos(60*%pi*180**-1)+F_GC*cos(60*%pi*180**-1)

//joint C

//Applying the summation of vertical forces  we get
F_FC=(115.5*sin(60*%pi*180**-1)-90)*(sin(60*%pi*180**-1))**-1

//Applying the summation of horizontal  forces  we get
F_CB=F_DC+F_GC*cos(60*%pi*180**-1)+F_FC*cos(60*%pi*180**-1)

//joint F

//Applying the summation of vertical forces  we get
F_FB=F_FC

//Applying the summation of horizontal  forces  we get
F_EF=F_FG+F_FC*cos(60*%pi*180**-1)+F_FB*cos(60*%pi*180**-1)

//Joint B

//Applying the summation of vertical forces  we get
F_EB=(120-F_FB*sin(60*%pi*180**-1))*(sin(60*%pi*180**-1))**-1

//Applying the summation of horizontal  forces  we get
F_BA=F_CB+F_FB*cos(60*%pi*180**-1)-F_EB*cos(60*%pi*180**-1)

//Joint E

//Applying the summation of vertical forces  we get
F_AE=F_EB

//Result
printf("Forces in Each members are as follows:F_GD %.1f kN (compression)",F_GD)
printf("\n                                      :F_DC %.2f",F_DC);printf(" KN(Tension)" )
printf("\n                                      :F_GC %.1f kN (Tension)",F_GC)
printf("\n                                      :F_FG %.1f kN (Compression)",F_FG)
printf("\n                                      :F_FC %.1f kN(compression)",F_FC)
printf("\n                                      :F_CB %.2f",F_CB);printf(" KN(Tension)")
printf("\n                                      :F_FB %.1f kN(compression)",F_FB)
printf("\n                                      :F_EF %.2f",F_EF);printf(" KN(compression)")
printf("\n                                      :F_EB %.2f",F_EB);printf(" KN(Tension)")
printf("\n                                      :F_BA %.2f",F_BA);printf(" KN(Tension)")
printf("\n                                      :F_AE %.2f",F_AE);printf(" KN(compression)")
