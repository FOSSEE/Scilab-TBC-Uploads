// Example 22_8
clc;funcprot(0);
//Given data
p_1=50;// bar
T_1=400;// °C
x=0.96;// Dryness
p_2=5;// bar
p_3=0.03;// bar
T_3=250;// °C
n_i=80;// Isentropic efficiency of both the expansions in %
n_m=99;//The mechanical efficiency in %
n_g=96;// The generator efficiency in %

//Calculation
//From h-s chart:
h_1=3198;// kJ/kg
h_2a=2675;// kJ/kg
h_3=2955;// kJ/kg
h_4a=2153;// kJ/kg
dh_1=((n_i/100)*(h_1-h_2a));//(h_1-h_2) kJ/kg
h_2=h_1-((n_i/100)*(h_1-h_2a));// kJ/kg
dh_2=((n_i/100)*(h_3-h_4a));//(h_3-h_4) in kJ/kg
W=dh_1+dh_2;//Work done per kg of steam kJ/kg
W_e=W*(n_m/100)*(n_g/100);// The work used out of 1060 kJ for the generation of electricity in kJ/kg
m_g=(1000/W_e)*3.6;// The steam generated in the boiler per 1 kW power generation in kg/kW-hr
//From steam tables,
h_fg=1643.5;// kJ/kg
Lh=x*h_fg;// The latent heat of steam lost per kg
m_s=(m_g*(h_3-h_2))/Lh;// The steam used in the reheater in kg
m=m_g+m_s;// Steam generated by the boiler per kW-hr output from the generator in kg
printf('\nThe mass of steam generated by the boiler per kW-hr=%0.3f kg',m);
// The answer vary due to round off error
