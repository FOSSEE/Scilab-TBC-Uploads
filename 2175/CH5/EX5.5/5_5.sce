clc;
T1=15+273;//K
T3=1100;//K
rv=12;
y=1.4;

T2=T1*rv^(y-1);
T3=1373;
T2=778;
T4=T3/[[rv*(T2/T3)]^(y-1)];

cp=1.005;
Q1=cp*(T3-T2);
cv=0.718;
Q=cv*(T4-T1);
eta=(Q1-Q)/Q1;
disp("efficiency is: ");
disp("%",eta*100)
