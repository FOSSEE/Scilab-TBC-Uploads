//Example 6.3
//Program to calculate laser gain coefficient for the cavity

clear;
clc ;
close ;

//Given data
L=600*10^-4;          //cm - CAVITY LENGTH
r=0.3;                //*100 percent - REFLECTIVITY
alpha_bar= 30;        //per cm - LOSSES

//Laser Gain Coefficient
gth_bar=alpha_bar+1/L*log(1/r);

//Displaying the Result in Command Window
printf("\n\n\t Laser Gain Coefficient is %1.0f per cm.",gth_bar);