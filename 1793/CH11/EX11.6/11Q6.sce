clc
T=8.5
eo=0.8
Cc=0.28
To=2650
T1=970
C1=0.02
t2=5
t1=1.5
H=8.5*12
epr=Cc*log10((To+T1)/To)
ep=eo-epr
C2=C1/(1+ep)
Sc=epr*H/(1+eo)
Ss=C2*H*log10(t2/t1)
TS=Sc+Ss
printf('Total consolidation settlement of the clay = %f in',TS)
