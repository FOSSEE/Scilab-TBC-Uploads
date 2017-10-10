clc
T1=300 
P1=100 //pressure in kPa
ro=8 //=V1/V2
gama=1.4
T2=T1*ro^(gama-1)
mprintf("T2=%fK\n",T2)//ans vary due to roundoff error
P2=P1*ro^gama
mprintf("P2=%fkPa\n",P2)//ans vary due to roundoff error
deltau=1840
Cv=0.7176
T3=(deltau/Cv)+T2
mprintf("T3=%fK\n",T3)//ans vary due to roundoff error
P3=(P2*T3)/T2
mprintf("P3=%fkPa\n",P3)//ans vary due to roundoff error
a=1/8 //=V3/V4
T4=T3*a^(gama-1)
mprintf("T4=%fK\n",T4)//ans vary due to roundoff error
P4=P3*a^gama
mprintf("P4=%fkPa\n",P4)//ans vary due to roundoff error
Eta=1-(1/ro)^(gama-1)
mprintf("Thermal efficiency=%f\n",Eta)//ans vary due to roundoff error
q1=deltau
mprintf("Work done=%fkJ/kg\n",q1*Eta)//ans vary due to roundoff error
N=1
R=8.314*10^3
P1=28.97 //pressure in bar
V1=(N*R*T1)/(P1*10^5)
mprintf("V1=%fmetre-cube/kg\n",V1)//ans vary due to roundoff error
V2=V1/ro
mprintf("V2=%fmetre-cube/kg\n",V2)//ans vary due to roundoff error
Pm=(q1*Eta)/(V1-V2)
mprintf("Pm=%fkPa",Pm)//ans vary due to roundoff error



