clc
P1=10 //pressure in bar
P2=1 //pressure in bar
h1=3052.1*10^3
v1=0.258
u1=h1-(P1*10^5*v1)
mprintf("u1=%fkJ/kg\n",u1/1000)//ans vary due to roundoff error
s1=7.1251 //in kJ/kg K
s2=s1
sg=7.3598
sf=1.3027
X2=(s2-sf)/(sg-sf)
mprintf("X2=%f\n",X2)//ans vary due to roundoff error
hg=2675.4
hf=417.54
h2=(X2*hg)+(1-X2)*hf
mprintf("h2=%fkJ/kg\n",h2)//ans vary due to roundoff error
vg=1.694
vf=0.0010434
v2=(X2*vg)+(1-X2)*vf
mprintf("v2=%fmetre-cube/kg\n",v2)//ans vary due to roundoff error
u2=(h2*10^3)-(P2*10^5*v2)
mprintf("u2=%fkJ/kg\n",u2/1000)//ans vary due to roundoff error
W=u1-u2
mprintf("W=%fkJ",W/1000)//ans vary due to roundoff error

