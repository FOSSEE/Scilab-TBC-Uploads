clc
h1=3456.2//in kJ/kg
v1=0.11608//in metre-cube
P1=3//in MPa
u1=(h1*10^3)-(P1*10^6*v1)
mprintf("u1=%fkJ/kg\n",u1/1000)
P2=100//in kPa
sf=1.3027//in kJ/kg K
sg=7.3598//in kJ/kg K
s2=7.2345//in kJ/kg K
s1=s2//isentropic process 
X2=(s1-sf)/(sg-sf)//entropy equation using quality factor
mprintf("X2=%f\n",X2)//ans vary due to roundoff error
hg=2675.4//in kJ/kg
hf=417.54//in kJ/kg
vg=1.694//in metre-cube/kg
vf=0.0010434//in metre-cube/kg
h2=(hg*X2)+(1-X2)*hf//enthalpy equation using quality factor
mprintf("h2=%fkJ/kg\n",h2)//ans vary due to roundoff error
v2=(vg*X2)+(1-X2)*vf//specific volume eqaution using quality factor
mprintf("v2=%fmetre-cube/kg\n",v2)//ans vary due to roundoff error
u2=(h2*10^3)-(P2*10^3*v2)//first law of thermodynamics
mprintf("u2=%fkJ/kg\n",u2/1000)//ans vary due to roundoff error
W=u1-u2//first law of thermodynamics
mprintf("W=%fkJ/kg",W/1000)//ans vary due to roundoff errror






