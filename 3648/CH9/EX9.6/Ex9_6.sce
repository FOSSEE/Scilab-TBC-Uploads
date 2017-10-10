
//Example 9_6
clc();
clear;
//To find wheter the crown is solid gold
m=1.3      //units in Kg
g=9.8      //units in meter/Sec^2
W=m*g    //units in Kg meter/Sec^2
w1=1.14      //units in Kg
Wapp=w1*g        //units in Kg meter/Sec^2
Pf=1000 //units in Kg/meter^3
P=Pf*(W/(W-Wapp))  //units in Kg/meter^3

printf("Density of gold in given substance is P=%d Kg/Meter^3\n But the density of original gold is 19,300 Kg / Meter^3 so the Crown is either hallow or made of something",P)
