//ques-25.15
//Calculating Boyles temperature for Carbon monoxide gas
clc
a=3.59;//(in L^2 atm/mol^2)
b=0.0427;//(in L/mol)
R=0.0821;//(in L atm/mol/K)
Tb=a/(R*b);
printf("Boyles temperature required is %d K.",Tb);
