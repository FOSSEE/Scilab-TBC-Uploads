clear;
clc;
printf("\t\t\tProblem Number 6.31\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.31 (page no. 275) 
// Solution

//data given
T1=800+273; //Celsius temperature converted to Kelvin //initial temperature
T2=500+273; //Celsius temperature converted to Kelvin //final temperature
p2=1; //atm //absolute final pressure
p1=5; //atm //absolute initial pressure
//A gas expands isentropically
//From the equation,
//T2/T1=((p2/p1)^((k-1)/k));
//rearranging,
k=inv(1-((log(T2/T1)/log(p2/p1)))); //k=cp/cv //Ratio of specific heats
printf("Ratio of specific heats (k) is %f\n",k);
