//calculating the speed and percentage increase in flux
//Chapter 2
//Example 2.8
//page 97
clear;
clc;
disp("example 2.8")
disp("assuming constant flux")
E1=220;           //induced emf at N1 speed in volts
N1=750;          // speed 
K1=(E1/N1)
E2=250;          //induced emf at speed N2
N2=E2/K1
printf("speed at induced emf of 250V =%d rpm",N2)
disp("when induced emf is 250V and speed 700 rpm")
E3=250;            //induced emf at N3 speed
N3=700;            //speed
ratio=(E3*N1)/(E1*N3)
Pi=(ratio-1)*100
printf("percentage increase in flux is %f percent",Pi)