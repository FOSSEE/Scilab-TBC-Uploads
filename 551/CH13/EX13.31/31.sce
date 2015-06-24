clc
cp=0.92;
cv=0.75;
y=1.22; //y=cp/cv
p1=1; //bar
p2=p1;
p3=4; //bar
p4=16; //bar
T2=300; //K

T3=T2*(p3/p2)^((y-1)/y);
T4=p4/p3*T3;
T1=T4/(p4/p1)^((y-1)/y);

disp("(i) Work done per kg of gas ")
Q_supplied=cv*(T4-T3);
Q_rejected=cp*(T1-T2);

W=Q_supplied-Q_rejected;
disp("W=")
disp(W)
disp("kJ/kg")


disp("(ii) Efficiency of the cycle =")
n=W/Q_supplied;
disp(n)