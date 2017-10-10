clc
v1=0.0011145
V=0.05
mliquid=V/v1
mprintf("Mass of liquid=%fkg\n",mliquid)//ans may vary due to roundoff error
h1=719.12
P1=0.792*10^3
u1=h1-(P1*v1)
mprintf("u1=%fkJ/kg\n",u1)//ans may vary due to roundoff error
v2=1/mliquid
mprintf("v2=%fmetre-cube/kg\n",v2)//ans may vary due to roundoff error
u2=u1
T=147.73 //temperature in Kelvin
vf=1.088*10^-3
hf=622.4
vg=0.41845
hg=2742.55
X2=(v2-vf)/(vg-vf)
mprintf("X2=%f\n",X2)//ans vary due to roundoff error
h2=(X2*hg)+(1-X2)*hf
mprintf("h2=%fkJ/kg\n",h2)//ans vary due to roundoff error
P2=4.5*10^5
u2=(h2*10^3)-(P2*v2)
mprintf("u2=%fkJ/kg\n",u2/1000)//ans may vary due to roundoff error


