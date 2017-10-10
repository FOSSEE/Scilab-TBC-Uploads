////Variable Declaration
dHcCH4 = -891.0        //Std. heat of combustion for CH4, kJ/mol
dHcC8H18 = -5471.0     //Std. heat of combustion for C8H18, kJ/mol

T = 298.15
[SmCO2,SmCH4,SmH2O,SmO2,SmC8H18] = (213.8,186.3,70.0,205.2,316.1)
dnCH4 = -2.
dnC8H18 = 4.5
R = 8.314
//Calculations
dACH4 = dHcCH4*1e3 - dnCH4*R*T - T*(SmCO2 + 2*SmH2O - SmCH4 - 2*SmO2)
dAC8H18 = dHcC8H18*1e3 - dnC8H18*R*T - T*(8*SmCO2 + 9*SmH2O - SmC8H18 - 25.*SmO2/2) 
//Results 
printf("\n Maximum Available work through combustion of CH4 %4.1f kJ/mol",dACH4/1000)

printf("\n Maximum Available work through combustion of C8H18 %4.1f kJ/mol",dAC8H18/1000)

