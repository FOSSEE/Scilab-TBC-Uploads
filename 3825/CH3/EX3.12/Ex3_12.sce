clc
X=0.85
vg=0.8854 //in metre-cube/kg
vf=0.001060 //in metre-cube/kg
hf=504.7 //in kJ/kg
hg=2706.3 //in kJ/kg
v=(X*vg)+(1-X)*vf
mprintf("v=%f metre-cube/kg\n",v)//ans may vary due to roundoff error
h=(X*hg)+(1-X)*hf
mprintf("h=%f kJ/kg\n",h)
P=2 //pressure in bar
u=(h*10^3)-(P*10^5*v)
mprintf("u=%fkJ/kg",u/1000)//ans varies due to roundoff error



