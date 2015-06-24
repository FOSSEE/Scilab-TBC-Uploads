clc;funcprot(0);//EXAMPLE 17.23
// Initialisation of Variables
etabth=0.3;....................//Brake thermal efficiency
afrw=20;........................//Air fuel ratio by weight
C=41800;.........................//Calorific value of fuel used in kJ/kg
R=287;........................//Gas constant in J/kg
//Calculations
Wp=etabth*C;...................//Work produced per kg of fuel in kJ
p1=1.0132;t=273+15;............//STP conditions in bar and Kelvin
V=(afrw*t*R)/(p1*10^5);.......//Volume of air used in m^3
pmb=(Wp*1000)/(V*10^5);........//Brake mean effective pressure in bar
disp(pmb,"Brake mean effective pressure (in bar):")
