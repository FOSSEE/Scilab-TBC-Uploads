T1 = 800;
T2 = 30;
e_max = 1-((T2+273)/(T1+273));
Wnet = 1; // in kW
Q1 = Wnet/e_max;
Q2 = Q1-Wnet;
disp("KW",Q2,"Least rate of heat rejection is")
