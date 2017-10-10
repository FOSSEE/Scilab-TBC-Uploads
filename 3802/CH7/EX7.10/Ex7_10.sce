//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex7_10.sce.

clc;
clear;
Ip=1000;                          //primary current in A
Is=5;                             //secodary current in A
Tp=1;                              //number of Primary turns

printf("\n (a)")
nominal_ratio=Ip/Is;
Ie=7;                             //loss component of current in A
actual_ratio=nominal_ratio+(Ie/Is);
epsilon_r=((nominal_ratio-actual_ratio)/actual_ratio)*100;
printf("\n  Ratio error when turns ratio equal to nominal ratio=%1.3f percentage \n",epsilon_r)

printf("\n (b)")
reducing_value=0.5/100;
Ts=nominal_ratio-(reducing_value*nominal_ratio); 
n=Ts/Tp;                                      //transformer turns ratio
actual_ratio=n+(Ie/Is);  
epsilon_r=((nominal_ratio-actual_ratio)/actual_ratio)*100;
printf("\n  Ratio error when secondary turns are reduced by 0.5 percentage=%1.1f percentage",epsilon_r)
