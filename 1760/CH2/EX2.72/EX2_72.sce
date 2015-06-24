  //EXAMPLE 2-72   PG NO 111
P.F=0.5;
cosQ=0.5;
sinQ=0.866;
V=552;
I=2.3;
v=240;
PF1=0.89;
P=v*I*PF1;
Q=(V*V-P*P)^0.5;
disp(' ACTIVE POWER is = '+string(P)+' W');
disp(' REACTIVE POWER is = '+string(Q)+' vars');
