///Example 5.3 Page No:88
///Find Height required to setup of bar
//Input data
clc;
clear;
//Import maths
L=100;         //Height of sine bar
theta=12.8    //angle in degree minut
//Z=sin(theta)=0.22154849
Z=0.22154849

///Calculation
b=Z*L;         //Height required to setup in mm


///Output
printf('Height required= %f mm \n',b);
