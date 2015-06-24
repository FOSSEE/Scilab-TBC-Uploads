//ques11
//The Use of Generalized Charts
clear
clc
//(a)specific volume using ideal gas equation of state
R=0.0815;//gas constant for given substance in kPa.m^3/Kg.K
Pcr=4.059;//Critical Pressure in MPa
Tcr=374.2;//Critical Temp in K
T=323;//Temp in K
P=1000;//Pressure in kPa
v=R*T/P;//Specific Volume in m^3/Kg
printf('\n(a) Specific Volume = %.6f m^3/kg ',v);
er=(v-0.021796)/0.021796;//error
printf('\n Error = %.3f',er);
//(b) specific volume using chart
Pr=P/Pcr;//reduced pressure
Tr=T/Tcr;//reduced Temperature
Z=0.84;//from compressibility chart 
Videal=Z*v;//Ideal Volume in m^3/kg
printf('\n(b) Ideal volume = %.6f m^3/kg ',Videal);
er=(Videal-0.021796)/0.021796;//error 
printf('\n Error = %.3f',er);