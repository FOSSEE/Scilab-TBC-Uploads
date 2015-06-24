// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 13")
Cp=2.286;//specific heat at constant pressure in kJ/kg k
Cv=1.786;//specific heat at constant volume in kJ/kg k
R1=8.3143;//universal gas constant in kJ/kg k
disp("characteristics gas constant(R2)in kJ/kg k")
R2=Cp-Cv
disp("molecular weight of gas(m)in kg/kg mol")
m=R1/R2
disp("NOTE=>Their is some calculation mistake while calaulating gas constant in book,which is corrected above hence answer may vary.")
