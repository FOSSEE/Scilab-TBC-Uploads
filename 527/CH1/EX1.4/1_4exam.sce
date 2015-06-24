//Engineering and Chemical Thermodynamics
//Example 1.3
//Page no :27

clear ; clc
//From Ideal gas law we have v=(R*T)/P

//Given data
P = 1.4 ; //[MPa]
P_low = 1 ;//[MPa]
P_high = 1.5;//[MPa]

//At T=333*C from interpolation we have
v_cap_P1_5 = 0.18086 ;//[m^3/kg]
v_cap_P1 = 0.27414 ;//[m^3/kg]

//Molar volume is inversely proportional to pressure
v_cap_P1_4 = v_cap_P1 +(v_cap_P1_5 - v_cap_P1)*((1/P - 1/P_low)/(1/P_high - 1/P_low));
x=(0.19951-0.19418)/0.19418*100 ;
disp(" Example: 1.4   Page no : 28") ;
printf('\n        Specific volume (m^3/kg) = %g',v_cap_P1_4);
printf('\n        Percentage difference = %g',x);