clc();
clear;
//To determine the first two energy levels using particle-in-a-box model
L=3*10^-5;                                            //diameter of the sphere
h=6.626*10^-34;                                       //plancks constant
m=1.67*10^-27;                                        //mass of the particle
n=1;
E1=((h^2)*(n^2))/(8*m*(L^2)*1.6*10^-19)*10^12        //first energy level
E2=E1*2^2                                             //second energy level
printf("The first energy level is %f Mev",E1);
printf("The second energy level is %f Mev",E2);
