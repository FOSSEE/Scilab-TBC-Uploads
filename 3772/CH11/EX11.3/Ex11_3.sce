// Problem 11.3,Page no.274

clc;clear;
close;

A=300 //cm**2 //Area of column
e=5 //cm //eccentricity

//Calculations

//sigma_d=P*A**-1  //Direct compressive stress
//M=P*e //Bending Moment
Z=((20**4-10**4)*(6*20)**-1) //cm**3 //Section modulus

//sigma_b=M*Z**-1=P*250**-1 

//Now sigma_d+sigma_b=60*10**2

//P*300**-1+P*250**-1=6000

//After simplifying we get
P_1=6000*300*250*550**-1 //N //Load

//sigma_b-sigma_d=300 

P_2=300*300*250*50**-1 //N //Load 

//Result
printf("The maximum load column can carry %.2f",P_2);printf(" N")
