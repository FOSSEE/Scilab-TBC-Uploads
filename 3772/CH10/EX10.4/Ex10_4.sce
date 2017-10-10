// Problem no 10.4,Page No.253

clc;clear;
close;

//JOint D

//Applying the summation of vertical forces  we get
F_1=6*sin(30*%pi*180**-1)**-1

//Applying the summation of horizontal  forces  we get
F_5=F_1*cos(30*%pi*180**-1)

//Joint C

//Resolving forces perpendicular to plane
F_6=10*cos(30*%pi*180**-1)

//Resolving forces parallel to plane
F_2=F_1+10*cos(60*%pi*180**-1)

//Joint E

//Applying the summation of vertical forces  we get
F_7=(8+F_6*sin(60*%pi*180**-1))*(sin(60*%pi*180**-1))**-1
F_4=F_5+F_6*cos(60*%pi*180**-1)+F_7*cos(60*180**-1*%pi)

//Resolving forces perpendicular to plane
F_3=F_7*sin(60*%pi*180**-1)

//Resolving forces parallel to plane
F_8=F_2+F_7*cos(30*%pi*180**-1)

//Result
printf("Forces in Each members are as follows:F_1 %.2f",F_1);printf(" KN(Tension)")
printf("\n                                      :F_5 %.2f",F_5);printf(" KN(compression)")
printf("\n                                      :F_6 %.2f",F_6);printf(" KN(compression)")
printf("\n                                      :F_2 %.2f",F_2);printf(" KN(Tension)")
printf("\n                                      :F_7 %.2f",F_7);printf(" KN(Tension)")
printf("\n                                      :F_4 %.2f",F_4);printf(" KN(compression)")
printf("\n                                      :F_3 %.2f",F_3);printf(" KN(compression)")
printf("\n                                      :F_8 %.2f",F_8);printf(" KN(Tension)")
