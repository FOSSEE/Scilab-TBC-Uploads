clc
R=8.314
gama=1.4
Cv=R/(gama-1)
mprintf("Cv=%fJ/mol K\n",Cv)
T2=370
T1=300
deltas=Cv*log(T2/T1)
mprintf("delta s=%fJ/mol K",deltas)//ans vary due to roundoff error

