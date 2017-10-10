clc
P1=24
P2=26
T1=300
T2=400
v1=0.10336 //at P1 and T1
v2=0.09483 //at P2 and T1
v3=0.12522 //at P1 and T2
v4=0.11526 //at P2 and T2
h1=3013.4
h2=3007.4
h3=3242.3
h4=3239
P3=25
h5=h1+(((h2-h1)*(P3-P1))/(P2-P1))//interpolation at T=300
v5=v1+(((v2-v1)*(P3-P1))/(P2-P1))//interpolation at T=300
h6=h3+(((h4-h3)*(P3-P1))/(P2-P1))//interpolation at T=400
v6=v3+(((v4-v3)*(P3-P1))/(P2-P1))//interpolation at T=400
T3=350
h7=h5+(((h6-h5)*(T3-T1))/(T2-T1))//interpolation at T=350
v7=v5+(((v6-v5)*(T3-T1))/(T2-T1))//interpolation at T=350
mprintf("v=%fmetre-cube/kg\n",v7)//ans may vary due to roundoff error
mprintf("h=%fkJ/kg\n",h7)//ans may vary due to roundoff error


