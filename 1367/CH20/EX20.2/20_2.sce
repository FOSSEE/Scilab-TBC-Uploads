//Investigate an oxidation film will form over Nickel or not
//Ex:20.2
clc;
clear;
close;
m_m=58.71;//molecular weight of ni
m_c=74.71;//molecular weight of nio
p_m=8900;//density of ni in kg/m^3
p_c=7080;//desity of nio in kg/m^3
x=m_m/p_m;//molar volume of ni in m^3/mol
disp(x,"Mc/Pc (in m^3/mol)");
y=m_c/p_c;//molar volume of nio in m^3/mol
disp(y,"Mm/Pm (in m^3/mol)");
printf("           Mc/Pc > Mm/Pm Hence protective layer of NiO will form over Ni        ");