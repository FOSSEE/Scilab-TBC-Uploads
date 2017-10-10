clc
P1=1 
P2=2
T1=300
T2=500
R=8.314
Cp=(7*R)/2
deltas=(Cp*log(T2/T1))-(R*log(P2/P1))
mprintf("deltas=%fkJ/kmol K",deltas)//ans vary due to roundoff error
