clear;
clc;
printf("\t\t\tProblem Number 6.9\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.9 (page no. 252) 
// Solution

T2=500+460;  //absolute  final temperature  //unit:R
T1=80+460;  //absolute initial temperature //unit:R
//The equation cpbar= 0.338-(1.24*10^2/T)+(4.15*10^4)/T^2 has a form , cbar= Adash+(Bdash/T)+(Ddash/T^2)
//So,
Adash=0.338;      //constant
Bdash=-1.24*10^2; //constant
Ddash=4.15*10^4;  //constant
//Therefore,from equation,cbar=Adash+((Bdash*log(T2/T1))/(T2-T1))+(Ddash/(T2*T1))
cpbar=Adash+((Bdash*log(T2/T1))/(T2-T1))+(Ddash/(T2*T1)); //The mean specific heat //Btu/lbm*R
printf("The mean specific heat at constant pressure between 80F and 500F is %f Btu/lbm*R\n",cpbar);
