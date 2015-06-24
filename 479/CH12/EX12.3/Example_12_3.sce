//Chemical Engineering Thermodynamics
//Chapter 12
//Refrigeration

//Example 12.3
clear;
clc;

//Given
//Consider the figure 12.4 (page no 226) 
m = 5;//tonnes of refrigeration
T1 = 273-10;//temperature of the saturated vapour in K
T2 = 273+35;//temperature of the super heated vapour in K
T3 = 273+25;//temperature of the saturated liquid in K
T4 = 273+25;//temperature of the wet vapour in K
H1 = 341.8;//enthalpy of the saturated vapour in Kcal/Kg
H2 = 409.0;//enthalpy of the super heated vapour in Kcal/Kg
H3 = 350.0;//enthalpy of the saturated liquid in Kcal/Kg
H4 = 71.3;//enthalpy of the wet vapour in Kcal/Kg

//To Calculate the C.O.P, mass of refrigerant required, compressor horse power required and the C.O.P & compressor horse power for a reversed Carnot cycle
//(i)Calculation of the C.O.P of the compression cycle
//From equation 12.6 (page no 226)
C.O.P = (H1-H4)/(H2-H1);
mprintf('(i)C.O.P of the compression cycle is %f',C.O.P);

//(ii)Calculation of mass of refrigerant required
//From equation 12.7 (page no 226)
M = (m*50.4)/(H1-H4);
mprintf('\n (ii)The mass of refrigerant required is %f Kg/mt',M);

//(iii)Calculation of the compressor horse power
//From equation 12.5 (page no 226)
C_hp = (H2-H1)*M*(427/4500);
mprintf('\n (iii)The compressor horse power is %f hp',C_hp);

//(iv)Calculation for reversed Carnot cycle
//From equation 12.1 (page no 220)
C.O.P = T1/(T3-T1);
mprintf('\n\n (iv)C.O.P for the reversed Carnot cycle is %f',C.O.P);
Q2 = m*50.4*(427/4500);//in hp
C_hp = Q2/C.O.P;
mprintf('\n    Compressor horse power for the reversed Carnot cycle is %f hp',C_hp);
//end