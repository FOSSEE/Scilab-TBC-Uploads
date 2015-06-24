




//Ex1_8
//given 
//page no 12
clc;
clear;
//k=aa+as=6.3;
//Given values from research
k=6.3;      //combined attenuation due to absorption and scattering
d=25;       //in cm
disp('Solution (ii)');
//Io/Ii=exp(-(ao+ai)*d);  d in m
j=exp(-(k)*d/100);  //Io/Ii ratio
printf("\n  Io is %0.3f of Ii \n",j);       //result
