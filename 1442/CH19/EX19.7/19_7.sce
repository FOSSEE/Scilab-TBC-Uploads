clc
//initialisation of variables
R= 8.314 //J/mol K
T= 25 //C
gf= 16590 //kJ/kmol
T1= 500 //C
Cp= 4.157 //J/mol K
hf= -46190 //kJ/kmol
//CALCULATIONS
K= %e^(gf/(R*(273.15+T)))
r= (1-((273.15+T)/(273.15+T1)))*((hf/(R*(273.15+T)))+(R/Cp))-2*log((273.15+T1)/(273.15+T))+0.6
KT1= K*%e^r
//RESULTS
printf (' equilibrium constant= %.1f bar^-1 ',K)
printf (' \n equilibrium constant= %.5f bar^-1 ',KT1)
