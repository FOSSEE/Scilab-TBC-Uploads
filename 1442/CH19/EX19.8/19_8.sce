clc
//initialisation of variables
uCO2= -394374 //J/mol
uCO= -137150 //J/mol
uO2= 0
R= 8.314 //J/mol K
T= 25 //C
cpCO2= 4.57 //J/mol K
cpCO= 3.5 //J/mol K
cpO2= 3.5 //J/mol K
T1= 1500 //C
hf= -393522 //kJ/kmol
gf= -110529 //kJ/kmol
T2= 2500 //C
//CALCULATIONS
r= -(uCO2-uCO-0.5*uO2)/(R*(273.15+T))
s= (cpCO2-cpCO-0.5*cpO2)
r1= (1-((273.15+T)/(273.15+T1)))*((hf-gf)/(R*(273.15+T))-s)+s*log((273.15+T1)/(273.15+T))
KT1= %e^(r+r1)
r2= (1-((273.15+T)/(273.15+T2)))*((hf-gf)/(R*(273.15+T))-s)+s*log((273.15+T2)/(273.15+T))
KT2= %e^(r+r2)
//RESULTS
printf (' equilibrium constant at T1= %.3f C ',KT1)
printf (' \n equilibrium constant at T2= %.3f C ',KT2)
