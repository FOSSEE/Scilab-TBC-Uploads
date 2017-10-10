// Example 22_29
clc;funcprot(0);
//Given data
p_a=4.5;// bar
p_b=0.04;// bar
p_1=15;// bar
p_2=0.04;// bar
m_s=48000;// kg/hr
T_a=450;// °C
T_b=217;// °C
h_fa=62.9// kJ/kg
h_fb=30.0;// kJ/kg
h_ga=356;// kJ/kg
h_gb=330;// kJ/kg
s_fa=0.135;// kJ/kg-K
s_fb=0.081;// kJ/kg-K
s_ga=0.539;// kJ/kg-K
s_gb=0.693;// kJ/kg-K
v_sfa=80*10^-6;// m^3/kg
v_sfb=76.5*10^-6;// m^3/kg
v_sga=0.068;// m^3/kg
v_sgb=5.178;// m^3/kg

//Calculation
m_h2o=(m_s/3600);// kg/sec
// s_a=s_b
x_b=(s_ga-s_fb)/(s_gb-s_fb);
h_b=h_fb+(x_b*(h_gb-h_fb));// kJ/kg
h_c=30;// kJ/kg
h_fc=h_c;// kJ/kg
//From h-s chart:
h_1=2800;// kJ/kg
h_2=1920;// kJ/kg
// From steam tables
h_f3=121.4;// kJ/kg
h_f4=844.6;// kJ/kg
m_hg=(m_h2o*(h_1-h_f3))/(h_b-h_fc);// kg/sec
m=m_hg/m_h2o;
W_Hg=m_hg*(h_ga-h_b);// kW
W_H2o=m_h2o*(h_1-h_2);// kW
W_t=(W_Hg+W_H2o)/1000;//Total work done per second in MW
Q_s=m_hg*(h_ga-h_fc);// The total heat supplied in kJ/sec
n_o=((W_t*1000)/Q_s)*100;// Overall efficiency in %
printf('\nThe overall efficiency of the cycle=%0.1f percentage \nThe flow of mercury through mercury turbine=%0.1f kg/sec \nTotal work done per second=%0.1f MW',n_o,m_hg,W_t);
// The answer vary due to round off error

