clc
//solution
//    initialization of variables
V=0.6 // volume of tyre in m^3
Pgauge=200 // gauge pressure in KPa
T=20+273 // temperature converted to kelvin
Patm=100 // atmospheric pressure in KPa
R=287 // gas constant in Nm/kg.K
Pabs=(Pgauge+Patm)*1000 // calculating absolute pressue in Pa 

m=Pabs*V/(R*T)// mass from ideal gas equation
printf("The Mass of air is %.2f Kg",m)
