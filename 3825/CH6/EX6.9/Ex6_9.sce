clc
P1=10^6 //pressure in pascal
P2=4*10^6 //pressure in pascal
h0=2776.2 //in kJ/kg
v0=0.1943 //in metre-cube/kg
hi=3215.7 //in kJ/kg
u0=h0-(v0*(P1/1000))
mprintf("u0=%fkJ/kg\n",u0)//ans vary due to roundoff error
V=2 //in metre-cube
m0=V/v0
mi=m0
mprintf("mo=%fkg\n",m0)//ans vary due to roundoff error
Tf=425 //final temperature assumed in celsius
hf=3273.03 //in kJ/kg
vf=0.0766 //in metre-cube/kg
uf=hf-(vf*(P2/1000))
mprintf("uf=%fkJ/kg\n",uf)//ans vary due to roundoff error
mf=V/vf
mprintf("mf=%fkg\n",mf)//ans vary due to roundoff error
mprintf("Final temperature=%iCelsius\n",Tf)//since mf(hi-uf)=m0(hi-u0) at this temperature
mprintf("Mass of steam that enters tank=%fkg",mf-mi)//ans vary due to roundoff error

