// Example 18_4
clc;funcprot(0);
//Given data 
V=5000;//Circulation of cooling water in m^3/hr 
C=3;// Allowable concentration ratio
Cr=12;// The cooling range in °C
El=2;// Evaporation losses in %
Wl=0.2;// Windage losses in %

//Calculation
E=(El/100)*V;// Evaporation losses in m^3/hr
W=(Wl/100)*V;// Windage losses in m^3/hr
B=(E/(C-1))-W;// Blow down rate in m^3/hr
M=E+W+B;// The make up water in m^3/hr 
printf('\nThe make up water required=%0.0f m^3/hr',M );
