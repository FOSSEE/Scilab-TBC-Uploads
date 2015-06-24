clc
cp=14.3; //kJ/kg.K
cv=10.2; //kJ/kg.K
V1=0.1; //m^3
T1=300; //K
p1=1; //bar
p2=8; //bar
y=cp/cv;
R=cp-cv;
V2=V1*(p1/p2)^(1/y);
V3=V2;
T2=T1*(p2/p1)^((y-1)/y);
p3=p1*V1/V3;
T3=300; //K


disp("(i) Pressure at the end of constant volume cooling = ")
disp(p3)
disp("bar")


disp("(ii) Change in internal energy during constant volume process")
m=p1*V1/R/T1*10^2; //kg

dU_23=m*cv*(T3-T2);
disp("dU_23 = ")
disp(dU_23)
disp("kJ")


disp("(iii) Net work done and heat transferred during the cycle")
W_12=m*R*(T1-T2)/(y-1);
W_23=0;
W_31=p3*V3*log(V1/V3)*10^2; //kJ
disp("Net work done=")
Wnet=W_12+W_23+W_31;
disp(Wnet)
disp("kJ")
Qnet=Wnet;
disp("Heat transferred during the complete cycle = ")
disp(Qnet)
disp("kJ")