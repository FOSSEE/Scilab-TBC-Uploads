// Example 7_4
clc;funcprot(0);
// Given data
m=1.5;// kg
x_1=0;// The dryness fraction
T_1=20.0;// °C
p_1=0.10;// MPa
p_2=0.10;// MPa
c=4.19;// kJ/kg.°C

// Solution
T_2=T_1;// °C
deltaS=c*log(T_2/T_1);// kJ/kg.K
printf('\nThe change in specific entropy of the water,s_2-s_1=%0.0f.Consequently, the entropy of an incompressible material is not altered by changing its pressure.',deltaS);
