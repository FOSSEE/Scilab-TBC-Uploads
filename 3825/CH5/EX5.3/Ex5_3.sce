clc
hf=417.54 //in kJ/kg
hg=2675.4 //in kJ/kg
vf=0.0010434 //in metre-cube/kg
vg=1.694 //in metre-cube/kg
P=100 //pressure in kPa
W=P*10^3*(vg-vf)
mprintf("W=%fkJ\n",W*10^-3)//ans vary due to roundoff error
q=hg-hf
mprintf("q=%fkJ\n",q)

