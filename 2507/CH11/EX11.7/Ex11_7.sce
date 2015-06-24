clc
clear
printf("Example 11.7 | Page number 406 \n\n");
//Determine the pressure using:
//(i) ideal gas equation of state
//(ii) generalised compressibility chart
//(iii) van der Waals equation
//(iv) Redlich-Kwong equation of state
//(v) Bettie-Bridgeman equation

//Given Data
M = 28 //g/mol
m = 3.5//kg
V = 0.015 //m^3
v = V/m //m^3/kg
T = 473 //K
R = 8314.3/M //J/kgK
//Solution

//Part(i)
printf("Part(i)\n")
p = m*R*T/V //Pa
printf("Pressure (using ideal gas equation of state) = %.2f MPa\n\n",p*(1e-6))

//Part(ii)
printf("Part(ii)\n")
pc = 3.39e6 //Pa //critical pressure
Tc = 126.2 //K //critical temperature
vc = 0.0899 //m^3/kmol //critical volume

TR = T/Tc //reduced temperature
vR = v/(R*Tc/pc) //reduced volume
Z = 1.1 //Compressibility factor
printf("From the generalized compressiblity chart, at reduced volume of %.4f and reduced temperature of %.2f, Z = %.2f\n",vR,TR,Z)
p = Z*R*T/v //Pa
printf("Pressure (using generalised compressibility chart) = %.3f MPa\n\n",p*(1e-6))

//Part(iii)
printf("Part(iii)\n")
a = 0.1366e6 //Pam^5/kmol^2
b = 0.0386 //m^3/kmol
p = (8314.3*T/(v*M - b)) - a/(v*M)^2
printf("Pressure (using van der Waals equation) = %.2f MPa\n\n",p*(1e-6))

//Part(iv)
printf("Part(iv)\n")
a = (0.427*(R*M)^2*Tc^2.5/pc)
b = 0.0866*(R*M*Tc/pc)

p = (R*M*T/(v*M-b))-(a/(((v*M)^2 + v*M*b)*(T^0.5)))
printf("Pressure (using Redlich-Kwong equation of state) = %.2f MPa\n\n",p*(1e-6))

//---Note--- //Solution to Part(iv) in the textbook is 40.58 MPa which is wrong. The correct solution (38.13 MPa) is computed here.

//Part(v)
printf("Part(v)\n")
A0 = 136.2315
a = 0.02617
B0 = 0.05046
b = -0.00691
c = 42000

A = A0*(1 - a/(v*M))
B = B0*(1 - b/(v*M))
eps = c/(T^3 * v*M)
p = ((8314.3)*T*(1-eps)*(v*M+B))/(v*M)^2 - 1e3*A/(v*M)^2
printf("Pressure (using ideal gas equation of state) = %.2f MPa\n\n",p*(1e-6))
