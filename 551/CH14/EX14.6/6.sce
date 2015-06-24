clc
cpw=4.18; //kJ/kg

disp("(i) Quantity of ice produced")
t=20; //0C
L=335; //kJ/kg
capacity=280; //tonnes

Q1=cpw*t + L; //Heat to be extracted per kg of water (to form ice at 0°C)
Rn=capacity*14000; //kJ/h

m_ice=Rn*24/Q1/1000;
disp("Quantity of ice produced in 24 hours =")
disp(m_ice)
disp("tonnes")


disp("(ii) Minimum power required =")
T1=298; //K
T2=263; //K

COP=T2/(T1-T2);
W=Rn/COP/3600; //kJ/s
disp("Power required =")
disp(W)
disp("kW")