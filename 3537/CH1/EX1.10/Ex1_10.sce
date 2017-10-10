//Example 1_10
clc();
clear;
//To Find the thickness of the glass plate
lamda=4800                   //units in Angstrom
lamda=4800*10^-10            //units in mts
n=5
u1=1.4                      //first refractive index
u2=1.7                      //second refractive index
t=(n*lamda)/(u2-u1)               //units in mts
printf("thickness of glass plate is %f mts",t)
