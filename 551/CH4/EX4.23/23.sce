clc
V1=0.2; //m^3
p1=4*10^5; //N/m^2
T1=403; //K
p2=1.02*10^5; //N/m^2
dH=72.5; //kJ
Q_23=dH;
cp=1; //kJ/kg
cv=0.714; //kJ/kg
y=1.4;
V2=V1*(p1/p2)^(1/y);
T2=T1*((p2/p1)^((y-1)/y));
R=(cp-cv)*1000; //J/kg.K
m=p1*V1/R/T1;
T3=Q_23/(m*cp) +T2;
V3=V2*T3/T2;
W_12=(p1*V1 - p2*V2)/(y-1);
W_23=p2*(V3-V2);
W_123=W_12+W_23;
disp("Total work done = ")
disp(W_123)
disp("J")


disp("(ii) Index of expansion, n")
p3=p2;
n=(p1*V1-p3*V3)/W_123 + 1;
disp("value of index = ")
disp(n)