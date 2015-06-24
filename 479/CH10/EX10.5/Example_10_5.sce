//Chemical Engineering Thermodynamics
//Chapter 10
//Compressor

//Example 10.5
clear;
clc;

//Given
P1 = 1;//Initial pressure in Kgf/sq cm
P4 = 200;//Final pressure in Kgf/sq cm
n = 4;//no of stages

//To find out the presure between stages
r = (P4/P1)^(1/n);//Compression ratio
P2 = r*P1;
mprintf('The pressure after 1st stage is %f Kgf/sq cm',P2);
P3 = r*P2;
mprintf('\n The pressure after 2nd stage is %f Kgf/sq cm',P3);
P4 = r*P3;
mprintf('\n The pressure after 3rd stage is %f Kgf/sq cm',P4);
//end