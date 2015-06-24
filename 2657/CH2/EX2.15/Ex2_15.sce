//Calculations on dual combustion cycle
clc,clear
//Given:
r=15 //Compression ratio
P1=1,T1=25+273,V1=.1 //Pressure, temperature, volume at 1 in bar, K, m^3
P4=65,T4=1500+273 //Pressure and temperature at 4 in bar and K
cv=0.718 //Specific heat at constant volume in kJ/kgK
g=1.4 //Specific heat ratio(gamma)
//Solution:
//Refer fig 2.29
V2=V1/r //Volume at 2 in m^3
P2=P1*(r)^g //Pressure at 2 in bar
T2=T1*(r)^(g-1) //Temperature at 2 in K
P3=P4 //Pressure at 3 in bar
T3=T2*(P3/P2) //Temperature at 3 in K
V3=V2 //Volume at 3 in m^3
V4=V3*(T4/T3) //Volume at 4 in m^3
V5=V1 //Volume at 5 in m^3
P5=P4*(V4/V5)^g //Pressure at 5 in bar
T5=T4*(V4/V5)^(g-1) //Temperature at 5 in K
eta=1-(T5-T1)/((T3-T2)+g*(T4-T3)) //Thermal efficiency
//Results:
printf("\n Point 1:\n Pressure = %d bar, Volume = %.1f m^3, Temperature = %d degreeC",P1,V1,T1-273)
printf("\n\n Point 2:\n Pressure = %.1f bar, Volume = %.4f m^3, Temperature = %d degreeC",P2,V2,T2-273)
printf("\n\n Point 3:\n Pressure = %d bar, Volume = %.4f m^3, Temperature = %d degreeC",P3,V3,T3-273)
printf("\n\n Point 4:\n Pressure = %d bar, Volume = %.4f m^3, Temperature = %d degreeC",P4,V4,T4-273)
printf("\n\n Point 5:\n Pressure = %.2f bar, Volume = %.1f m^3, Temperature = %d degreeC",P5,V5,T5-273)
printf("\n\n The thermal efficiency of the cycle, eta = %d percent",eta*100)
//Answers in the book are wrong
