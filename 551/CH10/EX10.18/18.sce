clc
h1=29.3; //kJ/kg
h2=42.3; //kJ/kg
h3=h2;
t_db2=24.5; //0C
t_db1=12; //0C
v_s1=0.817; //m^3/kg
amt=0.30; //Amount of air circulation m^3/min/person
capacity=60; //Seating capacity of office
BF=0.4; //By-pass factor
W3=8.6;
W1=6.8;

m_a=amt*capacity/v_s1;

disp("(i) Heating capacity of the heating coil =")
Q=m_a*(h2-h1)/60;
disp(Q)
disp("kW")

t_db4=(t_db2-BF*t_db1)/(1-BF);
disp("Coil surface temperature =")
disp(t_db4)
disp("ºC")

disp("(ii) The capacity of the humidifier =")
c=m_a*(W3-W1)/1000*60;
disp(c)
disp("kg/h")