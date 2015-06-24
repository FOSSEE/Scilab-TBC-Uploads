clc
c_pg=1; //kJ/kgK
h_fg=1940.7; //kJ/kg
Ts=473; //K ; Temperature of saturation of steam
T1=1273; //K ; Initial temperature of gases
T2=773; //K ; Final temperature of gases
T0=293; //K ; atmospheric temperature

//Heat lost by gases=Heat gained by 1 kg saturated water when it is converted to steam at 200 0C

m_g=h_fg/c_pg/(T1-T2);
dS_g=m_g*c_pg*log(T2/T1);
dS_w=h_fg/Ts;

dS_net=dS_g + dS_w;
disp("Net change in entropy = ")
disp(dS_net)
disp("kJ/K")

E=T0*dS_net; //Increase in unavailable energy due to hea transfer
disp("Increase in unavailable energy =")
disp(E)
disp("kJ")
