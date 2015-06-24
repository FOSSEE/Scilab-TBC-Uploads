clc();
clear;
//To determine the length of a box
h=6.626*10^-34;                                 //plancks constant
n=3;                                            //for second excited state
m=1.67*10^-27;                                  //mass of proton
E=0.5;                                           //energy in Mev
L=((h*n)/sqrt(8*m*E*10^6*1.6*10^-19))*10^15      //length of the box
printf("The length of the box for proton in its second excited state is %f fm ",L);