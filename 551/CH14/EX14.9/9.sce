clc
y=1.4;
n=1.35;
cp=1.003; //kJ/kg K
p2=1; //bar
p1=8; //bar
T3=282; //K
T4=302; //K
T1=T4;
T4=T3*(p1/p2)^((n-1)/n);
T2=T1*(p2/p1)^((n-1)/n);

Q1=cp*(T3-T2); //Heat extracted from cold chamber per kg of air
Q2=cp*(T4-T1); //Heat rejected in the cooling chamber per kg of air
cv=cp/y;
R=cp-cv;
W=n/(n-1)*R*((T4-T3) - (T1-T2));

COP=Q1/W;
disp("COP=")
disp(COP)