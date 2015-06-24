h1 = 236.04; s1 = 0.9322; s2 = s1;
P2 = 0.8; // in MPa
h2 = 272.05; h3 = 93.42; h4 = h3;
m = 0.06; // mass flow rate
Q2 = m*(h1-h4);
Wc = m*(h2-h1);
Q1 = m*(h2-h4);
COP = Q2/Wc;
disp("kW",Q2,"The rate of heat removal is")
disp("kW",Wc,"Power input to the compressor is")
disp("kW",Q1,"The heat rejection rate in the condenser is")
disp(COP,"COP is")
