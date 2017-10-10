clc
Q1=50 
Q2=Q1
T1=480
T2=300
mprintf("integral(dQ/T)=%fkJ/min K\n",(Q1/T1)-(Q2/T2))
Eta=1-(T2/T1)
mprintf("Eta=%f\n",Eta)
W=Eta*Q1
mprintf("Eta*Q1=%fkJ/min\n",W)
Q2=Q1-W
mprintf("Q2=%fkJ/min",Q2)

