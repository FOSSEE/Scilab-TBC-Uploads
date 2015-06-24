//Chemical Engineering Thermodynamics
//Chapter 11
//Liquefaction of Gases

//Example 11.1
clear;
clc;

//Given
P1 = 8.74;//Initial pressure in Kgf/sq cm
P2 = 2.41;//Final pressure in Kgf/sq cm
H1 = 327.13;//Enthalpy of inlet stream in Kcal/Kg
H2 = H1;//Enthalpy of exit stream in Kcal/Kg ,since throttling is isenthalpic
Hl = 26.8;//Enthalpy of liquid  at the final condition in Kcal/Kg
Hg = 340.3;//Enthalpy of gas at the final condition  in Kcal/Kg
vl = 152*10^-5;//Specific volume of liquid at the final condition in cubic meter/Kg
vg = 0.509;//Specific volume of gas at the final condition in cubic meter/Kg
v1 = 0.1494;//Initial specific volume in cubic meter/Kg

//To Calculate the dryness fraction of exit stream and the ratio of upstream to downstream diameters
//(i)Calculation of the dryness fraction of exit stream
//From equation 3.13(a) (page no 82)
x = (H2- Hl)/(Hg-Hl);
mprintf('(i)The dryness fraction of the exit stream is %f',x);

//(ii)Calculation of the ratio of upstream to downstream pipe diameters
//From equation 3.13(b) (page no 82)
v2 = (vl*(1-x))+(x*vg);//Total specific volume at the final condition in cubic meter/Kg
//u1 = u2; since KE changes are negligible
//From continuity equation: A2/A1 = D2^2/D1^2 = v2/v1 ; let required ratio,r = D2/D1;
r = (v2/v1)^(1/2);
mprintf('\n (ii)The ratio of upstream to downstream diameters  is %f',r);
//end