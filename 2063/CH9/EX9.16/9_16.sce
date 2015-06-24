clc
clear
//Input data
P1=1;//Initial pressure of a two stage air compressor in bar
P3=36;//Final pressure in bar
T1=298;//Initial temperature in K
n=1.35;//Polytropic index
T3=298;//Temperature after intercooling in K
Tc=20;//Permissible temperature rise of the cooling water in K
R=287;//Gas constant in J/kg K
Cp=1;//Specific heat of air in kJ/kg K
Cw=4.2;//Specific heat of water in kJ/kg K
ma=1;//Mass of air in the compressor in kg

//Calculations
P2=(P1*P3)^(0.5);//Intercooler pressure for complete intercooling and for minimum work of compression in bar
T2=T1*(P2/P1)^((n-1)/n);//Temperature after the compression process in K
mw=(ma*Cp*(T2-T3))/(Cw*(Tc));//Mass of water to circulate in the intercooler per kg of air in kg

//Output
printf('Mass of water to circulate in the intercooler for abstracting heat is %3.3f kg',mw)
