clc;

T1=288;
p2!p1=10;
y=1.4;
T2s=T1*[(p2!p1)^{(y-1)/y}];

nc=0.82;
T2=(T2s-T1)/nc+T1;

T3=973;
y2=1.333;
T4s=T3/[(p2!p1)^{(y2-1)/y2}]

nt=0.85;
T4=T3-(T3-T4s)*nt

cp=1.005;
cp2=1.11;
Wi=cp*(T2-T1);
Wo=cp2*(T3-T4);

N=(Wo-Wi);

Q=cp2*(T3-T2);
Ceff=N/Q
disp("$",Ceff*100,"cycle efficiency is:");

Wratio=N/Wo;
disp(Wratio*100,"Work ratio is:");
