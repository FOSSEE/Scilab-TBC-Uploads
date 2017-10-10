// Example 22_13
clc;funcprot(0);
//Given data
T_1=300;// °C
p_1=40;// bar
p_2=14;// bar
p_3=3.4;// bar
p_4=0.07;// bar
n_t=80/100;// The turbine efficiency of each portion of the expansion

//Calculation
//(a)
// From h-s chart:
h_1=2953;// kJ/kg
h_2a=2738;// kJ/kg
h_2=h_1-((n_t)*(h_1-h_2a));// kJ/kg
// From h-s chart:
h_3a=2529;// kJ/kg
h_3=h_2-((n_t)*(h_2-h_3a));// kJ/kg
// From h-s chart:
h_4a=2040;// kJ/kg
h_4=h_3-((n_t)*(h_3-h_4a));// kJ/kg
// From steam tables
h_f5=162;// kJ/kg
h_f7=575;// kJ/kg
h_f8=825;// kJ/kg
m_1=(h_f8-h_f7)/(h_2-h_f8);// kJ/kg of steam
//Assume m_2=y(1);h_f6=y(2)
function[X]=mass(y)
    X(1)=(y(1)*(h_3-h_f7))-(1*(h_f7-y(2)));
    X(2)=(((m_1+y(1))*h_f7)+((1-m_1-y(1))*h_f5))-(1*y(2));
endfunction
y=[0.1 100];
z=fsolve(y,mass)
m_2=z(1);// kJ/kg of steam supplied to turbine
h_f6=z(2);// kJ/kg
//(b)
n=(((h_1-h_2)+((1-m_1)*(h_2-h_3))+((1-m_1-m_2)*(h_3-h_4)))/(h_1-h_f8))*100;//The efficiency of the cycle in %
printf('\n(a)The optimum mass of bled steam=%0.2f kJ/kg \n(b)The cycle efficiency=%0.1f percentage',m_2,n);
// The answer vary due to round off error
