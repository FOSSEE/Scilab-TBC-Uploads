clc
T1=293; //K
V1=0.025; //m^3
V3=V1;
p1=1.05*10^5; //N/m^2
p2=4.5*10^5; //N/m^2
R=0.287*10^3; 
cv=0.718;
cp=1.005;
T3=293; //K

disp("(i)Net heat flow")
m=p1*V1/R/T1;
T2=p2/p1*T1;
Q_12=m*cv*(T2-T1);
Q_23=m*cp*(T3-T2)

disp("Net heat flow = ")
Q_net=Q_12+Q_23;
disp(Q_net)
disp("kJ")


disp("(ii) Net entropy change")
dS_32=m*cp*log(T2/T1);
dS_12=m*cv*log(T2/T1);
dS_31=dS_32 - dS_12;
disp("Decrease in entropy = ")
disp(dS_31)
disp("kJ/K")