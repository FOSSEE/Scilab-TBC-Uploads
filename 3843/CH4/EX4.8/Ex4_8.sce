// Example 4_8
clc;funcprot(0);
// Given data
m=1;// The mass of nitrogen in kg
T_1=300;// K
T_2=1200;// K
M=28;// kg/kmol

// Calculation
// (a)
// Using the gas table in Appendix F,find the enthalpy change
h_1=8723;// kJ/kmol
h_2=36777;// kJ/kmol
delh=h_2-h_1;// kJ/mol
delh=delh/M;// kJ/kg
printf("\n(a)The enthalpy change,delh=%5.0f kJ/kmol or %4.0f kJ/kg",delh*M,delh);
// (b)
// The expression for c_p(T) is found in Table B-5.
delh=integrate('(39.06-(519.79*(T/100)^(-1.5))+(1072.7*(T/100)^(-2))-(820.4*(T/100)^(-3)))','T',T_1,T_2);// kJ/kmol
delh=delh/M;// kJ/kg
printf("\n(b)The enthalpy change,delh=%5.0f kJ/kmol or %4.0f kJ/kg",delh*M,delh);
// (c)
c_p=1.042;// kJ/kg.K
delh=c_p*(T_2-T_1);// kJ/kg
printf("\n(c)The enthalpy change,delh=%3.0f kJ/kg",delh);
