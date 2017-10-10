// Example 34_1
clc;funcprot(0);
//Given data
P=120000;// The cost of the water softner plant in rupees
S=(8/100)*P;// The salvage value of the plant in rupees
r=8/100;//Interest on sinking fund
n=12;//The life of the plant in years
RMLc=8000;//Repair,maintainence and labour costs
Cc=5000;// Chemical cost

//Calculation
A=(P-S)*(r/(((1+r)^n)-1));// Annual sinking fund payment for the plant in rupees
Ac=A+RMLc+Cc;// Annual cost of the plant in rupees
printf('\nAnnual cost of the plant=Rs.%0.0f',Ac);
// The answer vary due to round off error
