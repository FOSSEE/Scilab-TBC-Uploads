clear ;
clc ;
T1 = 234.5 ;// Temperature in K
P = 1 ; // Pressure in atm
rho1 = 14.19 // Density of solid Hg in g/(cm^3)
rho2 = 13.70 // Density of liquid Hg in g/(cm^3)
V = 200.59 // volume of liquid and solid in g/mol
delV = ((V/rho2)-(V/rho1))*(10^-3)// in dm^3/mol
delTdelP = 0.0051 // K/atm
R1 = 8.314 // in J
R2 = 0.082 // in (dm)^3/atm
delH = ((delV*T1)/(delTdelP))*(R1/R2)*10^-3;//molar heat of fusion in kJ/mol
printf('delH = %.3f (KJ)/mol',delH)
T2 = 273// in K
delP = (delH*(R2/R1)*(T2-T1))/(delV*T1)*10^3;//pressure required to raise melting point to T2 in atm
printf('\ndelP = %d atm ',delP)


//Example in page 10
