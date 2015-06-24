clc
clear
printf("Example 12.7 | Page number 422 \n\n");
//Find 
//(a) Actual air
//(b) Excess air
//(c) Percentage theoritical air
//(d) Mass fractions
//(e) Dew point 

//Part(a)
printf("Part(a)\n")
mC = 0.65 //kg //mass of C per kg coal
mA = 0.15 //kg //mass of Ash per kg coal
CR = 0.05 //kg //mass of carbon in solid refuse per kg coal
mR = 0.2 //kg //mass of refuse per kg coal
m = mC- CR //kg //mass of carbon burnt per kg coal

//By C balance
x = (14 + 1)*(12/0.6) //kg //mass of burnt coal
//By H2 balance
b = x*(0.06/2)
//By O2 Balance
a = (14 + 0.5 + 3.5 + 4.5)-(x*0.1/32) 
actual_air = a*(32+3.76*28)/x //kg/kg coal
printf("Actual air = %.3f kg/kg coal\n\n",actual_air)

//Part(b)
printf("Part(b)\n")
Stoichiometric_air = (0.6*11.45+0.06*34.3)-(0.1/0.232) //kg
excess_air = (actual_air - Stoichiometric_air)/Stoichiometric_air*100 
printf("Excess air = %.1f%%\n\n",excess_air)

//Part(c)
printf("Part(c)\n");
printf("Percentage theoritical air = %.1f%%\n\n",100+excess_air)

//Part(d)
printf("Part(d)\n")
m = 14*44 + 1*28 +3.5*32 +81.5*28 +9*18 //kg //mass of combustion product
printf("Mass fraction of CO2 = %.2f%%\n",14*44/m*100)
printf("Mass fraction of CO = %.2f%%\n",1*28/m*100)
printf("Mass fraction of O2 = %.2f%%\n",3.5*32/m*100)
printf("Mass fraction of N2 = %.2f%%\n",81.5*28/m*100)
printf("Mass fraction of H2O = %.2f%%\n\n",9*18/m*100)

//Part(e)
printf("Part(e)\n")
xH2O = 9/(14+1+3.5+81.5+9) //molfraction of H2O
pH2O = xH2O*1e5 //Pa //partial pressure
//From steam table
tdp = 42.5 //°C
printf("Dew point temperature = %.1f °C",tdp)
