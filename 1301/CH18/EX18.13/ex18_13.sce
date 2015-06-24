clc;
h=6.63*10^-34;     //planck's constant in J.sec
delx=10^-9;        //in m
m=9.1*10^-31;      //mass in kg
u=h/(2*%pi*delx);  //uncertainty principle
disp(u,"Uncertainty in electrons momentum in kg.m/sec");  //displaying result
delv=u/m;     //uncertainty principle
disp(delv,"Uncertainty in electrons velocity in m/sec");  //displaying result
disp(u*1,"Uncertainty in electrons position in m");  //displaying result