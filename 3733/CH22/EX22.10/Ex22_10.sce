// Example 22_10
clc;funcprot(0);
//Given data
p_2=100;// bar
T_1=500;// °C
p_3=11.5;// bar
p_5=0.05// bar
n_i1=85;// Isentropic efficiency of each stage expansion in %
n_i2=80;//Isentropic efficiency of one stage expansion with no reheat in %
P=100;// The capacity of the plant in MW

//Calculation
//(a)
// In this case the processes are shown in Fig.Prob.22.10(b)
// From h-s chart:
h_2=3370;// kJ/kg
h_3aa=2860;// kJ/kg
h_4=3500;// kJ/kg
h_5aa=2530;// kJ/kg
// From steam tables, at 0.06 bar
h_f6=137.6;// kJ/kg
W_t1=h_2-h_3aa;// (H.P turbine) kJ/kg
W_t2=h_4-h_5aa;// (L.P turbine) kJ/kg
Q_b=h_2-h_f6;// Heat supplied in the boiler in kJ/kg
Q_r=h_4-h_3aa;// Heat supplied in the reheater in kJ/kg
n_a=((W_t1+W_t2)/(Q_b+Q_r))*100;// Efficiency of the cycle iin %
m_s=(P*10^3)/(W_t1+W_t2);// The mass flow of steam per scond in kJ/sec
m_sa=(m_s*3600)/1000;// tons/hr

//(b)
// In this case the processes are shown in Fig.Prob.22.10(c)
h_2=3370;// kJ/kg
h_3a=2300;// kJ/kg
h_f4=137.8;// kJ/kg
n_b=((h_2-h_3a)/(h_2-h_f4))*100;//Efficiency of the cycle in %
m_sb=(((P*10^3*3600))/((h_2-h_3a)*1000));// tons/hr
printf('\n(a)Efficiency of the plant with reheating=%0.1f percentage \n   The steam required per hour=%0.2f kJ/sec \n(b)Efficiency of the plant with  no reheating=%0.1f percentage \n   The steam consumption per hour=%0.2f kJ/sec',n_a,m_sa,n_b,m_sb);
