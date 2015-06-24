clc
V1=0.004; //m^3
p1=1*10^5; //Pa
T1=300; //K
T2=400; //K
y=1.4;
M=28;
R0=8.314;
R=R0/M;


disp("(i) The heat supplied")
m=p1*V1/R/1000/T1; //kg
cv=R/(y-1);
Q=m*cv*(T2-T1);
disp("Q")
disp(Q)
disp("kJ")


disp("(ii) The entropy change")
dS=m*cv*log(T2/T1);
disp("dS=")
disp(dS)
disp("kJ/kg.K")