// Part (a)
P1 = 100; P2 = 50;
T1 = 273+300;
T2 = (P2/P1)*T1;
R = 0.287; cv = 0.718;
V1 = 0.8;
m = (P1*V1)/(R*T1);
Q = m*cv*(T2-T1);
disp("If the fluid is in the air")
disp("K",T2,"The final temperature is ")
disp("kJ/kg",Q,"The heat transferred is")
// Part (b)
t2 = 273+81.33; vf = 0.00103; vg = 3.24;
v1 = 2.6388; u1 = 2810.4; 
x2 = (v1-vf)/(vg-vf);
u2 = 340.42+(x2*2143.4);
m_ = V1/v1;
Q_ = m_*(u2-u1);
disp("If the fluid is in the steam")
disp("K",t2,"The final temperature is ")
disp("kJ/kg",Q_,"The heat transferred is")