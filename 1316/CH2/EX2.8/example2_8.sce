//Chapter 2
//Example 2.8
//Page 66

clear;
clc;

R1 = 1000.00;
R2 = 1000.00;
R3 = 605.00;
R4 = 500.00;
V =10.00;

//Finding Unknown Potential
printf("Here simply we use the equation to solve for Vx \n")

//Calculation of Vx
x = -[(V*R3)/(R3+R1)]+[(V*R4)/(R4+R2)]
printf("Vx = %f V \n",x)


printf("The negative sign tells us the polarity of the voltage , Vx.Since Vx numerically \n substracts from Va,we see that its positive terminal must be connected to pointa in figure \n")
