clc
h1=82.5; //kJ/kg
h2=47.5; //kJ/kg
h3=55.7; //kJ/kg
h5=36.6; //kJ/kg
W1=19.6; //gm/kg
W3=11.8; //gm/kg
t_db2=17.6; //0C
t_db3=25; //0C
v_s1=0.892; //m^3/kg
amt=250; //m^3/min

m_a=amt/v_s1;
disp("(i) The capacity of the cooling coil =")
capacity=m_a*(h1-h2)*60/14000;
disp(capacity)
disp("TR")

BF=(h2-h5)/(h1-h5);
disp("by-pass factor of the cooling coil =")
disp(BF)

disp("(ii) The heating capacity of the heating coil =")
Q=m_a*(h3-h2)/60;
disp(Q)
disp("kW")

BF=0.3;
t_db6=(t_db3-BF*t_db2)/(1-BF);
disp("surface temperature of heating coil =")
disp(t_db6)
disp("ºC")

disp("(iii) The mass of water vapour removed per hour =")
m=m_a*(W1-W3)*60/1000;
disp(m)
disp("kg/h")