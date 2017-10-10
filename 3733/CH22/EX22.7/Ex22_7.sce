// Example 22_7
clc;funcprot(0);
//Given data
p_1=100;// bar
T_1=400;// °C
p_2=20;// bar
p_l=1;// bar
p_3=p_2-p_l;// bar
T_3=380;//°C
n_i=80;// Isentropic efficiency of both the expansions in %
n_t=98;//The transmission efficiency in %
n_g=95;// The generator efficiency in %
P=60;// The generator output in MW

//Calculation
// From h-s diagram
h_1=3093;// kJ/kg
h_2a=2734;// kJ/kg
h_3=3203;// kJ/kg
h_4a=2157;// kJ/kg
// The isentropic efficiency of the expansion 1-2 and 3-4 is 80% as given in problem
h_2=h_1-((n_i/100)*(h_1-h_2a));// kJ/kg
h_4=h_3-((n_i/100)*(h_3-h_4a));// kJ/kg
W=(h_1-h_2)+(h_3-h_4);//Work done per kg of steam kJ/kg
m_s=(P*1000)/(W*(n_t/100)*(n_g/100));// Mass of steam passing through the turbine in kg/sec
m_s=(m_s*3600)/1000;// tons/hr
printf('\nThe quantity of steam circulated per hour=%0.1f tons/hr',m_s)
