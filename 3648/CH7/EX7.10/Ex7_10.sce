//Example 7_10
clc();
clear;
//To find out the ratio of F/W
G=6.67*10^-11   //units in Newton meter^2/Kg^2
m1=0.0080    //units in Kgs
m2=0.0080    //units in Kgs
r=2   //units in Meters
F=(G*m1*m2)/r^2    //units in Newtons
m=m1    //units in Kgs
g=9.8   //units in meter/sec^2
W=m*g   //units in Newtons
F_W=F/W
printf("The F/W Ratio is=")
disp(F_W)
