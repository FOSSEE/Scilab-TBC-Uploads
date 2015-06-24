clc
cp=1.005; //kJ/kg K
cv=0.718; //kJ/kg K
R=0.287; //kJ/kg K
m=1; //kg
T1=290; //K
T0=290; //K
T2=400; //K
p1=1; //bar
p0=1; //bar
p2=6; //bar


//Wrev=change in internal energy - T0*change in entropy
disp("(i) The irreversibility")
Wrev=-[cv*(T2-T1) - T0*[cp*log(T2/T1) - R*log(p2/p1)]];
n=[1/(1-log(T2/T1)/log(p2/p1))];
Wact=m*R*(T1-T2)/(n-1);

I=Wrev-Wact;
disp("Irreversibility=")
disp(I)
disp("kJ")


disp("(ii)The effectiveness = ")
effectiveness=Wrev/Wact*100;
disp(effectiveness)
disp("%")