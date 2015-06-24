clc
clear
//Initalization of variables
cr=5
pr3=176.73 //psia
h3=14580.3 //Btu/mol
M=28.9
//calculations
pr4=pr3/cr
h4=9409
twork=h3-h4
turb=twork/M
//results
printf("Turbine work = %.1f Btu/lb",turb)
