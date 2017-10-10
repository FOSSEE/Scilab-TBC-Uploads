clc
hf=640.12 //in kJ/kg
hg=2747.5 //in kJ/kg
X1=0.75
h1=(X1*hg)+(1-X1)*hf
mprintf("h1=%fkJ/kg\n",h1)//ans vary due to roundoff error
h2=2855.1 //in kJ/kg
q=h2-h1
mprintf("q=%fkJ/kg\n",q)//ans vary due to roundoff error
vf=0.0010928 //in metre-cube/kg
vg=0.3747 //in metre-cube/kg
v1=(X1*vg)+(1-X1)*vf
mprintf("v1=%fmetre-cube/kg\n",v1)//ans vary due to roundoff error
P=5*10^5
v2=0.425 //in metre-cub/kg
W=P*(v2-v1)
mprintf("W=%fkJ/kg\n",W*10^-3)//ans vary due to roundof error

