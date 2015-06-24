//Chemical Engineering Thermodynamics
//Chapter 12
//Refrigeration

//Example 12.4
clear;
clc;

//Given
//Water at 20 deg cel is chilled to 10 deg cel by flash evaporation
Pv = 0.012;//Vapour pressure of water at 10 deg celsius in Kgf/sq.cm
H1 = 20.03;//Enthalpy of liquid water at 20 deg cel in Kcal/Kg
H2 = 10.4;//Enthalpy of liquid water at 10 deg cel in Kcal/Kg
Hv = 601.6;//Enthalpy of saturated vapour at 10 deg cel in Kcal/kg

//To calculate the pressure in the tank and the amount of make up water required
P = Pv;//pressure in the tank = vapour pressure of water
mprintf('The pressure in the tank is %f Kgf/sq.cm',P);
//From equation 12.8 (page no 234)
x = (H1-H2)/(Hv-H2);
mprintf('\n The amount of make up water required is %f Kg',x);
//end