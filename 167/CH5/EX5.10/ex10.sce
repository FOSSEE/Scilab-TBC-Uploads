//example 10
//cooling of refrigant 134-a by water
clear
clc
disp('We take the entire heat exchanger as the system. This is a control volume since mass crosses the system boundary during the process.')
disp('For each fluid stream since there is no mixing. Thus, m1=m2=mh and m3=m4=mr')
mr=6 //mass flow rate of R-134a in kg/min
h1=62.982 //specific enthalpy of water in kJ/kg
h2=104.83 //specific enthalpy of water in kJ/kg
P3=1 //pressure of R-134a at inlet in MPa
T3=70 //temperature of R-134a at inlet in Celsius
h3=303.85 //specific enthalpy corresponding to P3,T3 in kJ/kg
P4=1 //pressure of R-134a at exit in MPa
T4=35 // temp. of R-134a at exit in Celsius
h4=100.87 // corresponding to P4,T4 in kJ/kg
mw=mr*(h4-h3)/(h1-h2) //mass flow rate of the cooling water in kg/min
qin=mw*(h2-h1) //the heat transfer rate from the refrigerant to water in kJ/min
printf("\n Hence,mass flow rate of the cooling water required is = %.1f kg/min. \n",mw);
printf("\n Heat transfer rate from refrigerant to water is = %.0f kJ/min. \n",qin);