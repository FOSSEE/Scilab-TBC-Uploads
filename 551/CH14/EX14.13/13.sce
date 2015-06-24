clc
L=335; //kJ/kg
h3=1319.22; //kJ/kg
h1=100.04; //kJ/kg
h4=h1;
s_f2=-2.1338; //kJ/kg K
s_g2=5.0585; //kJ/kg K
s_g3=4.4852; //kJ/kg K
h_f2=-54.56; //kJ/kg
h_g2=1304.99; //kJ/kg

x2=(s_g3-s_f2)/(s_g2-s_f2);

h2=h_f2+x2*(h_g2-h_f2);
COP_theoritical=(h2-h1)/(h3-h2);
COP_actual=0.62*COP_theoritical;
RE=COP_actual*(h3-h2); //Actual refrigerating effect per kg
Q=28*1000*L/24/3600; //Heat to be extracted per second

m=Q/RE; //Mass of refrigerant circulated per second

W=m*(h3-h2);
disp("Power required =")
disp(W)
disp("kW")