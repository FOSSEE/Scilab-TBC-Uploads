// Example 17_12
clc;funcprot(0);
//Given data
m_s=10;// Tonnes
U=4;// KW/m^2.°C
P=0.2;// bar

//Calculation
h_fg=2358.3;// Latent heat of steam at 0.2 bar pressure in kJ/kg
Q=(m_s*1000*h_fg)/3600;//kW
//The given data is T_s-T_wo=10°C; T_wo-T_wi=20°C;Using this two equations,we get
Theta_i=30;//°C
Theta_o=10;//°C
LMTD=(Theta_i-Theta_o)/(log(Theta_i/Theta_o));//Logrithemic mean temperature difference in °C
A=Q/(U*LMTD);// m^2
printf('\nThe area of the condenser required=%0.0f m^2',A);
