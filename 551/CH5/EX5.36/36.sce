clc
cp=1.005; //kJ/kg.K
R=0.287; //kJ/kg.K
V1=1.2; //m^3
p1=1*10^5; //Pa
p2=p1;
T1=300; //K
T2=600; //K
T3=T1;
p1=1*10^5; //Pa
cv=cp-R;

disp("(i) The net heat flow")
m=p1*V1/R/1000/T1; //kg
Q=m*R*(T2-T1);
disp("Q=")
disp(Q)
disp("kJ")


disp("(ii) The overall change in entropy")
dS_12=m*cp*log(T2/T1);
dS_23=m*(cp-R)*log(T3/T2); //cv=cp-R
dS_overall=dS_12+dS_23;
disp("Overall change in entropy=")
disp(dS_overall)
disp("kJ/K")


s=sqrt(300):0.1:sqrt(600);
T=s^2;
plot(s,T)

s=22.18:0.1:sqrt(600);
T=10*(s-16.725)^2;
plot(s,T,'r')

s=[17 25];
T=[600 600];
plot(s,T,'--')

s=[17 25];
T=[300 300];
plot(s,T,'--')

xtitle("T-s diagram", "S", "T")
legend("p=C", "V=C")
