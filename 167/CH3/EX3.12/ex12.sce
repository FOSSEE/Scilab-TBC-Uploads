//ques12
//Using Generalized Charts to Determine Pressure
clc
//(a)
R=0.5956;//Gas constant for a given substance in psia.ft^3/lbm.R
Pcr=3200;//Critical Pressure in psia
Tcr=1164.8;//Critical Temp in R
v=0.51431;//specific volume in ft^3/lbm
T=600;//Temperature in F
//so
P=1000;//Pressure in psia from Table A-6E
printf('\n(a) Pressure at a specified state = %.0f psia',P);
//(b)
T=1060;//Temperature in F
P=R*T/v;//Pressure in psia
printf('\n(b)Pressure of the steam under specified condition = %.0f psia',P);
//(c)using generalised compressibility chart
Vr=v*Pcr/(R*Tcr/Pcr);//reduced volume
Tr=T/Tcr;//reduced temperature
//so
Pr=0.33;//from compressibility chart
P=Pr*Pcr;//final Pressure in psia
printf('\n(c) Pressure(using generalised compressibility chart) = %.0f psia ',P);
