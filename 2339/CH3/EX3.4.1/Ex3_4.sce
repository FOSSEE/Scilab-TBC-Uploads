clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K

m=0.67;
P1=14;
T1=290+273;
R=287;
V1=(m*R*T1)/(14*(10^5));
printf('The Volume: %2.3f kJ',V1);
printf('\n');
V2=4*V1;
printf('The Final Volume: %2.3f kJ',V2);
printf('\n');
x=V1/V2;
y=x^1.3;
P2=P1*y;
printf('The Final Pressure: %2.3f bar',P2);
printf('\n');
x=V1/V2;
y=x^0.3;
T2=T1*y;
printf('The Final Temperature: %2.3f K',T2);
printf('\n');
