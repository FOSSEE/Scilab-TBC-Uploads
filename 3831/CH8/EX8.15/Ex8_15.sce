// Example 8_15
clc;funcprot(0);
// Given data
m_a=3.00;// g
T_a=10.0;// °C
m_b=200;// g
T_b=80.0;// °C
c=4186;// J/kg.K

// Solution
// Let a=cream,b=coffee
r=m_a/(m_a+m_b);// The mass ratio
S_p12=((m_a+m_b)/1000)*c*log([1+((r*(((T_a+273.15)/(T_b+273.15))-1)))]*((T_b+273.15)/(T_a+273.15))^(r));// J/K
printf("\nThe entropy produced,1(S_P)2=%0.3f J/K",S_p12);
