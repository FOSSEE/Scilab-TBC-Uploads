clc
T1=293; //K
T2=265; //K
T0=273; //K
L=335; //Latent heat of ice in kJ/kg
cpw=4.18;

COP=T2/(T1-T2);
Rn=cpw*(T1-T0)+L;
m_ice=COP*3600/Rn;
disp("ice formed per kWh =")
disp(m_ice)
disp("kg")