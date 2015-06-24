clc
P=5000; //kW
C=40000; //kJ/kg
n_rankine=0.5;
n_turbine=0.9;
n_heat_transfer=0.85;
n_combustion=0.98;

m_f=P/n_turbine/(C*n_heat_transfer*n_combustion*n_rankine);
disp("Fuel oil combustion=")
disp(m_f)
disp("kg/s")
