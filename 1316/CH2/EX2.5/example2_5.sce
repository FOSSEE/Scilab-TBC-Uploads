//Chapter 2
//Example 2.5
//Page 61

clear;
clc;

R1 = 2000.00;
R2 = 2000.00;
R3 = 2000.00;
R4 = 2050.00;
V = 5.00;
Rg = 50.0;

//Calculation of Offset Current
printf("From equation the offset voltage is Vth. \n")

//Calculation of Vth
x = V *(((R3*R2)-(R1*R4))/((R1+R3)*(R2+R4)))
printf("Vth = %f V  \n",x)

//Calculation of Thevenin Resistance
printf("We next find the bridge Thevenin Resistance form equation as : ")
y = ((R1*R2)/(R1+R2))+((R3*R4)/(R3+R4))
printf("Rth = %f ohm \n",y)

//Calculation of Current
printf("Finally the current is given by the equation ")
z = x/(y + Rg)
printf("Ig = %f Ampere \n",z)
printf("The negative sign on current simply means that current flows fromright to left.")
