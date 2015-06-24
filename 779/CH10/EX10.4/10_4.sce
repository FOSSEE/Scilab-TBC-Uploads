// Part (a)
P1 = 10; P2 = 1;
T1 = 273+300;
g = 1.4;
T2 = T1*((P2/P1)^((g-1)/g));
R = 0.287;
W12 = ((R*T1)/(1-g))*(T2/T1-1);
v2 = (R*T2)/(100*P2);
disp("If the fluid is in the air")
disp("m3/kg",v2,"The specific volume is")
disp("kJ",W12,"The work done per kg of the fluid is")
// Part (b)
u1 = 2793.2; v1 = 0.2579; s1 = 7.1228;
x2 = (7.1228-1.3025)/6.0568;
u2 = 417.33+(x2*2088.7);
v2 = 0.001043+(0.96*1.693);
W12 = u1-u2;
disp("If the fluid is in the steam")
disp("m3/kg",v2,"The specific volume is")
disp("kJ",W12,"The work done per kg of the fluid is")