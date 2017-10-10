//Chapter 2, Example 2.1, Page 29
clc
clear
//Find the inscrease in mass of the Satellite
v = 7.5*10**3
c = 2.998*10**8
//Calculating the expression using the taylor series
FMI = (1/2)*(v**2/c**2)
printf("The fractional mass increase = %e",FMI); 
//Answers may vary due to round off error
