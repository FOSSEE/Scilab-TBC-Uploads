//Chapter 2, Exmaple 8, page 70
//Calculate the volume of the insulator
clc
clear
//Thinkness of graded design
V = 150*sqrt(2)
Ebd = 50
T = V/Ebd
printf("\nThickness of graded design= %e cm \n",T)
//Based on figure 2.24
r = 2 // radius of the conductor
l = 10 //length of graded cylinder; The textbook uses 10 instead of 20
zr = l*(T+r)
printf("Curve = %e cm^2 \n",zr)
//Volume of graded design V1
V1 = 4*%pi*zr*(zr-r)
printf("V1 = %e cm^3 \n",V1) //Unit is wrong in the textbook
//Thickness of regular design as obtained form Eq.2.77
pow = V/(2*Ebd)
t = 2*(%e^pow-1)
printf("Thickness of regular design = %e cm \n",t)
//Volume of regular design V2
V2 = %pi*((2+t)^2-4)
printf("V2 = %e cm^3 \n",V2)//unit not mentioned in textbook
 
//Answers may vary due to round off error
