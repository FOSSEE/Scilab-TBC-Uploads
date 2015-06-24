//Chapter 5, Exmaple 3, page 174
//Calculate breakdown voltage at atm pressure 3 and 5
clc
clear
//(a)Based on equation 5.14
p = 101.3 // kPa
Ep = 2400.4/0.027
E = p*Ep
d = 1*10**-3 // 1 mm
Vs13 = E*d*3 // at 3 atm
Vs15 = E*d*5 // at 5 atm
printf("\n Part (a): based on equation 5.14")
printf("\n Breakdown voltage = %f kV or %f kV",Vs13*10^-3,Vs15*10^-3)

//(b)According to eqution 5.13
p = 101.3 // kPa
Cp3 = Ep*0.027*p*3 // at 3 atm
Vs23 = (18.42 + (Cp3*10**-3))/0.027
Cp5 = Ep*0.027*p*5 // at 5 atm
Vs25 = (18.42 + (Cp5*10**-3))/0.027
printf("\n Part (b):According to eqution 5.13")
printf("\n Breakdown voltage = %f V or %f kV",Vs23*10^-3,Vs25*10^-3)

//(b)According to criteria expressed by Equations 5.4 and 5.5
p = 101.3 // kPa
Vs3a = 27.73 // at 3 atm
Vs3b = 45.5 // at 5 atm
printf("\n Part (c):According to criteria expressed by Equations 5.4 and 5.5")
printf("\n Breakdown voltage = %f kV or %f kV",Vs3a,Vs3b)

//Answer may vary due to round off error
