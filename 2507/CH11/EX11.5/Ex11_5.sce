clc
clear
printf("Example 11.5 | Page number 399 \n\n");
//Calculate specific volume for gaseous propane using:
//(i) ideal gas equation
//(ii) generalized compressiblity chart
//Given data
T =150+273 //K
p = 7e6 //Pa

//Part (i)
printf("Part(i)\n")
v = (8314.3/44)*T/p //m^3/kg
printf("Specific volume for gaseous propane using ideal gas equation = %.4f m^3/kg\n\n",v)

//Part(ii)
printf("Part(ii)\n")
pc = 4.26e6 //Pa //critical pressure
Tc = 370 //K //critical temperature

pR = p/pc //reduced pressure
TR = T/Tc //reduced temperature
Z = 0.56 //compressibility factor
printf("From the generalized compressiblity chart, at reduced pressure of %.1f and reduced temperature of %.2f, Z = %.2f\n",pR,TR,Z)
v = Z*v
printf("Specific volume for gaseous propane using generalized compressiblity chart = %.5f m^3/kg\n\n",v)
