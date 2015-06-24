clc
p1=8*10^5; //Pa
V1=0.035; //m^3
T1=553; //K
p2=8*10^5; //Pa
V2=0.1; //m^3
n=1.4;
R=287; //J/kg K
T3=553; //K
cv=0.71; //kJ/kg K

m=p1*V1/R/T1;
T2=p2*V2/m/R;
p3=p2/((T2/T3)^(n/(n-1)));
V3=m*R*T3/p3;

disp("(i) The heat received in the cycle")

//constant pressure process 1-2
W_12=p1*(V2-V1)/10^3; //kJ
Q_12=m*cv*(T2-T1) + W_12; //kJ

//polytropic process 2-3
W_23=m*R/10^3*(T2-T3)/(n-1);
Q_23=m*cv*(T3-T2) + W_23;

Q_received=Q_12 + Q_23;
disp("Total heat received in the cycle=")
disp(Q_received)
disp("kJ")


disp("(ii) The heat rejected in the cycle")

//Isothermal process 3-1
W_31=p3*V3*log(V1/V3)/10^3; //kJ
Q_31=m*cv*(T3-T1) + W_31;
disp("Heat rejected in the cycle =")
disp(-Q_31)
disp("kJ")


disp("(ii) Efficiency of the cycle")
n=(Q_received - (-Q_31))/Q_received*100;
disp("Efficiency of the cycle =")
disp(n)
disp("%")