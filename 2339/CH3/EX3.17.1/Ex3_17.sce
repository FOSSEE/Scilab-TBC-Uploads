clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
P1=1.5;
V1=3;
T1=27+273;
P2=30;
T2=60+273;
R=0.287;

m1=(P1*100*V1)/(R*T1);
m2=(P2*100*V1)/(R*T2);

m=m2-m1;
printf('The mass pumped: %2.2f kg',m);
printf('\n');
V=(m*R*(17+273))/(1*100);

printf('Volume: %2.2f m^3',V);
printf('\n');

T3=27+273;
P3=(T3*P2)/T2;

printf('Final air pressure in the vessel: %2.2f bar',P3);
printf('\n');
