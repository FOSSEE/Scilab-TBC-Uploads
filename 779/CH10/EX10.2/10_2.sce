// Part (a)
R = 0.287; T1 = 273+150; v1 = 0.96; v2 = 1.55; Cp = 1.005;
P = (R*T1)/v1;
W = P*(v2-v1);
T2 = (v2/v1)*T1;
Q = Cp*(T2-T1);
disp("If the fluid is in the air")
disp("K",T2,"The final temperature is ")
disp("kJ",Q,"The heat transferred is")
disp("kJ",W,"Work done is")
// Part (b)
vg = 0.3928;
P1 = 200e03;
P2 = P1;
h1 = 2768.8;
t2 = 273+400; h2 = 3276.5;
Q_ = h2-h1;
W_ = P1*(v2-v1);
disp("If the fluid is in the steam")
disp("K",t2,"The final temperature is ")
disp("kJ",Q_,"The heat transferred is")
disp("J",W_,"Work done is")
