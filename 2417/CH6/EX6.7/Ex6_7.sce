clear;
clc;
printf("\t\t\tProblem Number 6.7\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.7 (page no. 245) 
// Solution

//Applying , (p1*V1)/T1 = (p2*V2)/T2
//and p2=p1*(T2/T1) because V1=V2
p1=200+14.7; //Unit:psia //initial pressure
T2=460+200; //final temperature is 200 F //Fahrenheit temperature converted to absolute temperature //unit:R
T1=460+73; //Fahrenheit temperature converted to absolute temperature //unit:R
p2=p1*(T2/T1); //final pressure //Unit:psia //Charles's law(volume constant)
printf("The final pressure is %f psia",p2);
