clc
clear
printf("Example 9.5 | Page number 258 \n\n");
//Part(a) Calculate increase in specific enthalpy
//Part(b) Calculate change in enthalpy

//Given data
p1 = 1 //bar //initial pressure
T1 = 27+273 //K //initial temperature
p2 = 10 //bar //final pressure
T2 = 327+273 //K //final temperature
//Solution
//Part(a)
printf("Part(a)\n");
delta_h = integrate('1.4-18.3*(T/100)^(-1.5)+38.3*(T/100)^(-2)-29.3*(T/100)^(-3)','T',T1,T2) //kJ/kg //Increase in specific enthalpy
printf("Increase in specific enthalpy = %.2f kJ/kg\n",delta_h)
//Part(b)
printf("\nPart(b)\n");
delta_h = integrate('1.042','T',T1,T2) //kJ/kg //Increase in specific enthalpy
printf("Increase in specific enthalpy at (Cp = 1.042 kJ/kgK) = %.2f kJ/kg",delta_h)
