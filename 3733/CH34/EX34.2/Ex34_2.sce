// Example 34_2
clc;funcprot(0);
//Given data
P=12000;//The cost of a small preheater in rupees
r=5/100;// Interest 
n=16;// Expected life in years
A=425;//The cost of  the equipment in rupees

//Calculation
S=round(P-((A)/(r/(((1+r)^n)-1))));// The salvage value of the preheater in rupees
printf('\nThe salvage value of the preheater after 16 years of service,S=Rs.%0.0f',S);
// The answer provided in the textbook is wrong
