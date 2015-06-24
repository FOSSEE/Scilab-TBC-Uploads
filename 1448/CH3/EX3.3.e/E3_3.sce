clc
//Initialization of variables
HC=716.68 //kJ
HH=871.88 //kJ
HO=249.17 //kJ
Hcond=-38 //kJ
HCH=-412
HCO=-360
HOH=-463
//Calculations
H1=HC+HH+HO
H2=3*HCH+HCO+HOH
H3=Hcond
H=H1+H2+H3
//results
printf('Sum of enthalpy changes = %d kJ',H)
