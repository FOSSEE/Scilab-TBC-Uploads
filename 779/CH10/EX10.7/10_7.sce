Pa = 1.5; Ta = 273+50; ca = 0.5;
Pb = 0.6; Tb = 20+273; mb = 2.5;
R = 8.3143;
Va = (ca*R*Ta)/(Pa*1e03);
ma = ca*28;
Rn = R/28;
Vb = (mb*Rn*Tb)/(Pb*1e03);
V = Va + Vb ;
m = ma + mb ;
Tf = 27+273;
P = (m*Rn*Tf)/V;
g = 1.4;
cv  = Rn/(g-1);
U1 = cv*(ma*Ta+mb*Tb);
U2 = m*cv*Tf;
Q = U2-U1;
disp("KPa",P,"The final equillibrium pressure is")
disp("kJ",Q,"The amount of heat transferred to the surrounding is")
T_ = (ma*Ta+mb*Tb)/m ;
P_ = (m*Rn*T_)/V;
disp("If the vessele is perfectly inslulated")
disp("K",T_,"The final temperature is")
disp("KPa",P_,"The final pressure is")