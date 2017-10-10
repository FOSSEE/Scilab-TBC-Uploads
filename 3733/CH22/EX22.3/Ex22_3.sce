// Example 22_3
clc;funcprot(0);
//Given data
p_1=30;// bar
p_3=0.04;// bar
x_1=0.841;// Dryness fraction

//Calculation
//From h-s chart:
h_1=2803;// kJ/kg
h_2=2370;// kJ/kg
h_3=2717;// kJ/kg
h_4=2124;// kJ/kg
x_2=0.824;// kJ/kg
p_7=2.5// bar
p_2=p_7;// bar
//From steam tables at p=2.5bar & p=0.04 bar
v_s1=0.00106;// kJ/kg
v_s2=0.00104;// kJ/kg
h_f5=121;// kJ/kg
h_f2=535;// kJ/kg

W_ph=(p_1-p_2)*10^2*v_s1;// Pump work for higher pressure stage in kJ/kg
W_pl=(p_1-p_2)*10^2*v_s2;// Pump work for lower pressure side in kJ/kg
m_s=x_1;// mass flow inkg
m_f=0.159;// Mass flow through first feed pump in kg
n_ws=(((h_1-h_2)+(m_s*(h_3-h_4))-(m_s*W_ph)-(m_f*W_pl))/((m_s*(h_1-h_f5))+(m_f*(h_1-h_f2))))*100;// Efficiency of the cycle
W_p=(p_1-p_2)*10^2*v_s2;// Pump work in kJ/kg
n_wos=(((h_1-h_4)-W_p)/(h_1-h_f5))*100;// Efficiency of the cycle without seperation
//From steam table,at p=0.04 bar
h_fg4=2433.1;// kJ/kg
h_f4=121.4;// kJ/kg
x_4=(h_4-h_f4)/(h_fg4);// Dryness at exit
printf('\n Efficiency of the cycle with seperation=%0.1f percentage \n Efficiency of the cycle without seperation=%0.1f percentage \n Dryness at exit,x_4=%0.3f',n_ws,n_wos,x_4 );
// The answer vary due to round off error
