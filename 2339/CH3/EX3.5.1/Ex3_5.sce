clc
clear


//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
P1=510;
V1=0.142;
P2=170;
V2=0.275;
H=-65;
Cv=0.718;
X=(P2*V2)-(P1*V1);
U=H-X;
printf('The Change in Internal Energy: %2.2f kJ',U);
printf('\n');
G=H/U;
Cp=G*Cv;
R=Cp-Cv;
printf('The Value of R: %2.3f kJ/kg K',R);
printf('\n');
