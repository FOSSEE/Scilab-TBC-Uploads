clc
clear
printf("Example 8.14 | Page number 230 \n\n");
//Find the available and unavailable parts of 100kJ of heat from
//Part(a) a reservoir at 1000K
//Part(b) a reservoir at 600K

//Given Data
Q1 = 100 //kJ //Heat input
T0 = 300 //K //Surrounding temperature

//Part(a)
printf("Part (a)\n");
T1 = 1000 //K //reservoir temperature
printf("Avalable enery of 100 kJ of heat from a reservoir at 1000K = %.1f kJ\n",Q1*(1-(T0/T1)));
printf("Unvalable enery of 100 kJ of heat from a reservoir at 1000K = %.1f kJ\n\n",Q1-Q1*(1-(T0/T1)))
//Part(b)
printf("Part (b)\n");
T1 = 600 //K //reservoir temperature
printf("Avalable enery of 100 kJ of heat from a reservoir at 1000K = %.1f kJ\n",Q1*(1-(T0/T1)));
printf("Unvalable enery of 100 kJ of heat from a reservoir at 1000K = %.1f kJ\n\n",Q1-Q1*(1-(T0/T1)))
