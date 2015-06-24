clc
m=20; //kg
p1=4*10^5; //Pa
p2=8*10^5; //Pa
V1=4; //m^3
V2=V1;
cp=1.04; //kJ/kg.K
cv=0.7432; //kJ/kg.K
R=cp-cv;
T1=p1*V1/R/1000; //kg.K;   T=mass*temperature
T2=p2*V2/R/1000; //kg.K


disp("(i) Change in internal energy")
dU=cv*(T2-T1);
disp("dU=")
disp(dU)
disp("kJ")


disp("(ii) Work done")
Q=0;
W=Q-dU;
disp("W")
disp(W)
disp("kJ")


disp("(iii) Heat transferred = ")
disp(Q)


disp("(iv) Change in entropy =")
dS=m*cv*log(T2/T1);
disp(dS)
disp("kJ/K")