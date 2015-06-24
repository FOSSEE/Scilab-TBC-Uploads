clc
t_c1=25; //0C
t_c2=65; //0C
cph=1.45; //kJ/kg K
m_h=0.9; //kg/s
t_h1=230; //0C
t_h2=160; //0C
U=420; //W/m^2 0C
cpc=4.187; //kJ/kg K

disp("(i) The rate of heat transfer =")
Q=m_h*cph*(t_h1-t_h2);
disp(Q)
disp("kJ/s")


disp("(ii) The mass flow rate of water =")
m_c=Q/cpc/(t_c2-t_c1);
disp(m_c)
disp("kg/s")


disp("(iii) The surface area of heat exchanger =")
LMTD=((t_h1-t_c2)- (t_h2-t_c1))/log((t_h1-t_c2)/(t_h2-t_c1)); //logarithmic mean temperature difference
A=Q*10^3/U/LMTD;
disp("A=")
disp(A)
disp("m^2")