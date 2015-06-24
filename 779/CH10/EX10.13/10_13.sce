P1 = 300e03; V1 = 0.07;
m = 0.25; T1 = 80+273;
R = (P1*V1)/(1000*m*T1);
P2 = P1;
V2 = 0.1;
T2 = (P2*V2)/(1000*m*R);
W = -25;
cv = -W/(m*(T2-T1));
cp = R+cv;
S21 = m*cp*log(V2/V1); // S21 = S2-S1
disp("kJ/kg K",cv,"cv of the gas is")
disp("kJ/kg K",cp,"cp of the gas is")
disp("kJ/kg K",S21,"Increase in the entropy of the gas is")