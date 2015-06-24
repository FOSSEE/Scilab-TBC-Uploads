clc;
p=1.05;//bar
V=0.02;//m^3
R=0.287;//m^3
T=15+273;//K
m=p*V*10^5/(R*T*10^3);

p2=4.2;//bar
T2=p2*T/p;

cv=0.714;
Q=m*cv*(T2-T);
Q_12=Q;

cp=1.005;
T3=288;//K
Q_23=m*cp*(T3-T2);

Q=Q_12+Q_23;
disp("heat rejected is:");
disp("kJ",-Q);

ch_entro=m*cp*log(T2/T3)-m*cv*log(T2/T3);
disp("decrease in entropy of air is:");
disp("kJ/K",ch_entro)
