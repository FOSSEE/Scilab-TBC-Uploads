clc
clear
printf("Example 5.3 | Page number 122 \n\n");
//Part(a) Determine the temperature of air at inlet to the turbine
//PArt(b) Determine power developed by turbine

//Given Data
mA = 0.8 // kg/s //flow rate of stream A
pA = 15e5 // N/m^2 //Pressure of stream A
tA = 250 //°C //temperature of stream A


mB = 0.5 // kg/s //flow rate of stream B
pB = 15e5 // N/m^2 //Pressure of stream B
tB = 200 //°C //temperature of stream B

Q = 0 //No heat loss

p1 = 10e5 // N/m^2 //pressure supply of chamber
t2 = 30 //°C //exhaust air temperature from turbine

Cv = 0.718 // KJ/kgK //heat capacity at constant volume
Cp = 1 // KJ/kgK //heat capacity at constant pressure

//solution
//Part(a)
printf("Part (a)\n")
t1 = ((mA*Cp*tA)+(mB*Cp*tB))/((mA*Cp)+(mB*Cp)) // °C //the temperature of air at inlet to the turbine
printf("The temperature of air at inlet to the turbine = %.2f °C\n",t1);
//Part(b)
printf("\nPart (b)\n")
WT = -1*(mA+mB)*Cp*(t2-t1) // °kW //power developed by turbine
printf("Power developed by turbine = %.2f kW",WT);
