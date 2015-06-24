clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
m=1;
P2=25;
P1=1;
pV=260;
T1=17+273;
T2=T1;
V1=(pV*T1)/(P1*100000);
printf('As process is Isothermal, Initial and Final Temperatures are same \n');
printf('The Final Temperature: %3.0f K',T1);
printf('\n');
V2=(pV*T2)/(P2*100000);
printf('The Final Volume: %3.5f m^3',V2);
printf('\n');
CR=P2/P1;
printf('The Compression Ratio: %3.0f ',CR);
printf('\n');
printf('Change in Enthalpy is zero as it is Isothermal process \n');
W=P1*100*V1*(log(P1/P2));
printf('Work Done is: %3.1f kJ',W);
printf('\n');
