//Example 1.2
clc,clear

P=7.56e5; //Initial cost of plant
S=1.56e5; // Salvage value of plant
n=25; //useful life of plant in years

x=1-(S/P)^(1/n); //annual unit depreciation
printf('(i)Annual deposit made = %f Rs\n',x)

Value= P*(1-x)^10 ; //value of plant after 10 years
printf('(ii)Value of plant after 10 years= %f Rs',Value)
