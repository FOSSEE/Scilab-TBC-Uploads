// Example 14_5
clc;funcprot(0);
//Given data
p=60;// bar
T=500;// °C
V_s=10;// m/sec
d_i=50;// mm
d_o=60;// mm
m_s=100;// kg/sec
q=150;// The amount of heat given in the super heater to the steam in kW/m^2
C_pg=1.2;// kJ/kg-°C
gradT_g=100;//°C

//Calculation
//From steam tables,
// At p=60 bar(saturated)
h_1=2784.3;// kJ/kg
// At p=60 bar and T=500°C
h_2=3422.3;// kJ/kg
v_s2=0.0567;// m^3/kg
Q=m_s*(h_2-h_1);// kJ/sec
A_s=Q/q;// m^2
n=m_s/(((%pi/4)*(d_i/1000)^2*(V_s/v_s2)));
L=(A_s/(%pi*(d_o/1000)*n));// m

//(b)
m_g=(Q)/(C_pg*gradT_g);// kg/sec
printf('\nThe number of super heat coils required=%0.0f \nLength of super heat coils,L=%0.1f m \nThe gas flow rate through rhe super heater=%0.1f kg/sec',n,L,m_g);
