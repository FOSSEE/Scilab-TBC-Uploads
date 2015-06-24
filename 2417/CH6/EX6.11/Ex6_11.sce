clear;
clc;
printf("\t\t\tProblem Number 6.11\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.11 (page no. 253) 
// Solution

T2=500+460; //absolute  final temperature  //unit:R
T1=80+460; //absolute initial temperature  //unit:R
//cp=0.219 + (3.42*10^-5*T) - (2.93*10^-9*T^2); //Unit:Btu/lbm*R
//Comparing with c=A+(B*T)+(D*T^2) 
A=0.219;        //constant
B=3.42*10^-5;   //constant
D=2.93*10^-9;   //constant
//Using these values and equation cbar=A+((B/2)(T2+T1))+((D/3)*(T2^2+(T2*T1)+T1^2))
cpbar=A+((B/2)*(T2+T1))+((D/3)*(T2^2+(T2*T1)+T1^2)); //The mean specific heat //Btu/lbm*R
printf("The mean specific heat at constant pressure for air between 80F and 500F is %f Btu/lbm*R\n",cpbar);
