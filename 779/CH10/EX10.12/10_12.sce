P1 = 700e03; T1 = 273+260; T3 = T1;
V1 = 0.028; V2 = 0.084;
R = 0.287;
m = (P1*V1)/(R*T1);
P2 = P1;
T2 = T1*((P2*V2)/(P1*V1));
n  = 1.5;
P3 = P2*((T3/T2)^(n/(n-1)));
cp = 1.005; cv = 0.718;
Q12 = m*cp*(T2-T1);
Q23 = m*cv*(T3-T2) + (m*R*(T2-T3))/(n-1);
Q31 = m*R*T1*log(P3/P1);
Q1 = Q12;
Q2 = -(Q23+Q31);
e = 1-(Q2/Q1);
disp("J",Q1,"The heat received in the cycle is")
disp("J",Q2,"The heat rejected in the cycle")
disp(e,"The efficiency of the cycle is")