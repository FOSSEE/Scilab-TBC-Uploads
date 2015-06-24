// Part (a)
P1 = 10; P2 = 1;
T1 = 273+200; n = 1.15; R = 0.287;
v2 = ((R*T1)/(P1*100))*((P1/P2)^(1/1.15));
v1 = ((R*T1)/(P1*100));
T2 = T1*(P2/P1)*(v2/v1);
cv = 0.716;
Q = (cv+(R/(1-n)))*(T2-T1);
disp("If the fluid is in the air")
disp("m3/kg",v2,"The specific volume is")
disp("K",T2,"The final temperature is ")
disp("kJ",Q,"Heat transferred per kg is")
// Part (b)
v1 = 0.20596; u1 = 2621.9;
v2 = v1*(P1/P2)^(1/n);
x2 = (v2-0.001043)/(1.694-0.001043);
t2 = 99.62+273;
u2 = 417.33+(x2*2088.7);
W = ((P1*100*v1)-(P2*100*v2))/(n-1);
Q = u2-u1+W;
disp("If the fluid is in the steam")
disp("m3/kg",v2,"The specific volume is")
disp("K",t2,"The final temperature is ")
disp("kJ",Q,"Heat transferred per kg is")