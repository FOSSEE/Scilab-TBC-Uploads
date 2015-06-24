//ques2
//The Actual Vapor-Compression Refrigeration Cycle
clear
clc
//state 1 
P1=0.14;//Pressure in MPa
T1=-10;//Temperature in C
h1=246.36;//enthalpy of heat in kJ/kg
//state 2
P2=0.8;//Pressure in MPa
T2=50;//Temperature in C
h2=286.69;//Enthalpy of heat in kJ/kg
//state 3
P3=0.72;//Pressure in MPa
T3=26;//Temperature in C
h3=87.83;//Enthalpy in kJ/kg

h4=h3;//throttling
ms=0.05;//mass flow rate in kg/s
Qls=ms*(h1-h4);//heat removal in kW 
Wins=ms*(h2-h1);//Power in kW
printf('(a) Rate of heat removal = %.2f kW \n',Qls);
printf('     Power = %.2f kW \n',Wins);

//(b)The isentropic efficiency of the compressor is determined as
h2s=284.21;
nc=(h2s-h1)/(h2-h1);
printf(' (b) Isentropic efficiency = %.3f \n',nc);
COPr=Qls/Wins;
printf(' (c) Coefficient of performance of the refrigerator = %.1f \n',COPr);
