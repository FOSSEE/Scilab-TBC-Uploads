clc
m_s=5*10^6; //kg
T2=4.5; //m
T1=3; //m
rho_hc=950; //kg/m^3
Q=125; //m^3/h

m_hc=m_s*(T2/T1-1);
disp("Quantity delivered =")
disp(m_hc)
disp("kg")

t=m_hc/rho_hc/Q;
disp("Time taken =")
disp(t)
disp("hours")