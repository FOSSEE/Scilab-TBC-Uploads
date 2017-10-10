clc
phi1=0.9
Ps=2.337
pw=phi1*Ps
mprintf("pw=%fkPa\n",pw)//ans vary due to roundoff error
P=101.325
Pa=P-pw
w1=0.622*(pw/Pa)
mprintf("w1=%f kg H2O/kg dry air\n",w1)//ans vary due to roundoff error
Mw=pw/P
mprintf("Mole fraction of water=%f\n",Mw)//ans vary due to roundoff error
R=8.314*10^3
T=293
v1=(R*T)/(P*10^3)
mprintf("v1=%fmetre-cube/kmol\n",v1)//ans vary due to roundoff error
ma1=((1-Mw)*(10/v1))*28.97
mprintf("Flow rate of dry air=%f kg/min\n",ma1)//ans vary due to roundoff error
TDB=40
phi2=0.2
w2=0.009
pw=1.3 //in kPa
Mw=pw/P
mprintf("Mole fraction of water vapor=%f\n",Mw)//ans vary due to roundoff error
v2=(R*(TDB+273))/(P*10^3)
mprintf("v2=%fmetre-cube/kmol\n",v2)//ans vary due to roundoff error
ma2=((1-Mw)*(30/v2))*28.97
mprintf("ma2=%fkg/min\n",ma2)//ans in textbook is wrong
w3=(w2+w1*(ma1/ma2))/(1+(ma1/ma2))
mprintf("w3=%f kg H20/kg dry air\n",w3)//ans vary due to roundoff error
h1star=54
h2star=64
h3star=(h2star+h1star*(ma1/ma2))/(1+(ma1/ma2))
mprintf("h3star=%fkJ/kg dry air",h3star)//ans vary due to roundoff error



