// Part (a)
v = 16 ; // v = v1/v2
P1 = 300e03;
P2 = P1*v;
R = 0.287; T1 = 300+273;
W12 = R*T1*log(1/v);
disp("If the fluid is in the air")
disp("Pa",P2,"The final pressure is ")
disp("kJ",0,"The change in internal energy is")
disp("kJ",W12,"Work done is")
// Part (b)
v1 = 0.7664; u1 = 2728.7;
v2 = v1/16;
x2 = (v2-0.00125)/(0.05013);
s2 = 2.7927+(x2*3.2802);
s1 = 7.5165;
u2 = 1080.37+(x2*1522.0);
du = u2-u1;
T = 250+273;
Q12 = T*(s2-s1)
disp("If the fluid is in the steam")
disp("K",T,"The final temperature is ")
disp("kJ/kg",Q12,"The heat transferred is")
disp("kJ/kg  ",du,"The change in internal energy is")