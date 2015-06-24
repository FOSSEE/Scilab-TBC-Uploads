clc
m=6; //kg/min
n_relative=0.50; 
cpw=4.187; //kJ/kg K
L=335; //kJ/kg

h_f2=31.4; //kJ/kg
h_fg2=154; //kJ/kg
h_f3=59.7; //kJ/kg
h_fg3=138; //kJ/kg
h_f4=59.7; //kJ/kg
x2=0.6;
s_f3=0.2232; //kJ/kg K
s_f2=0.1251; //kJ/kg K
T2=268; //K
T3=298; //K

h2=h_f2+x2*h_fg2;
x3=((s_f2-s_f3)+x2*(h_fg2/T2))*T3/h_fg3;
h3=h_f3+x3*h_fg3;
h1=h_f4;
COP_th=(h2-h1)/(h3-h2); //Theoritical COP
COP=n_relative*COP_th;

Q=cpw*(20-0) + L; //Heat extracted from 1 kg of water at 20°C for the formation of 1 kg of ice at 0°C

m_ice=COP*m*(h3-h2)/Q*60*24/1000; //in 24 hours
disp("m_ice=")
disp(m_ice)
disp("tonnes")