clc

y=1.4;
R=0.287; //kJ/kg K
T1=311; //K
T3=2223; //K
//p2/p1=15

disp("(i) Compression ratio =")
r=15^(1/1.4);
disp(r)


disp("(ii) Thermal efficiency =")
n_th=1-1/r^(y-1);
disp(n_th)

disp("(iii) Work done")
T2=T1*(r)^(y-1);
T4=T3/r^(y-1);
cv=R/(y-1);

Q_supplied=cv*(T3-T2);
Q_rejected=cv*(T4-T1);

W=Q_supplied-Q_rejected;
disp("Work done=")
disp(W)
disp("kJ")