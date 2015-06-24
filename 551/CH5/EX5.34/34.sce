clc
R=0.287; //kJ/kg.K
m=1; //kg
p1=8*10^5; //Pa
p2=1.6*10^5; //Pa
T1=380; //K
n=1.2;
y=1.4;


disp("(i) Final specific volume and temperature")
v1=R*T1/p1*10^3; //m^3/kg
v2=v1*(p1/p2)^(1/n);
T2=T1*(p2/p1)^((n-1)/n);
disp("v2=")
disp(v2)
disp("m^3/kg")
disp("T2=")
disp(T2)


disp("(ii) Change of internal energy, work done and heat interaction")
dU=R/(y-1)*(T2-T1);
disp("dU=")
disp(dU)
disp("kJ/kg")

W=R*(T1-T2)/(n-1);
disp("W=")
disp(W)
disp("kJ/kg")

Q=dU + W;
disp("Q=")
disp(Q)
disp("kJ/kg")


disp("(iii) Change in entropy")
dS=R/(y-1)*log(T2/T1) + R*log(v2/v1)
disp("dS=")
disp(dS)
disp("kJ/kg.K")