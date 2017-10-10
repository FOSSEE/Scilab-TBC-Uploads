clc
P1=100*10^3
v1=1
v2=1/16
n=1.25
T1=300
P2=P1*((v1/v2)^n)
mprintf("P2=%fMPa\n",P2/(10^6))
T2=(T1*P2*v2)/(P1*v1)
mprintf("T2=%fK\n",T2)
R=8.314
W=(R*(T1-T2))/(n-1)
mprintf("W=%fkJ/mol\n",W/1000)
gama=1.4
q=((R*(T2-T1))/(gama-1))+W
mprintf("q=%fkJ/mol",q/1000)



