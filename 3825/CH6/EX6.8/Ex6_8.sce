clc
P=20 //pressure in bar
T1=600
h=3689.2 //in kJ/kg for T1
v=0.1995 //in metre-cube/kg for T1
u1=((h*10^3)-((P*10^5)*v))/1000 //conversion into kJ/kg
mprintf("u=%fkJ/kg\n",u1)
T2=700
h=3916.5 //in kJ/kg for T2
v=0.2232 //in metre-cube/kg for T2
u2=((h*10^3)-((P*10^5)*v))/1000 //conversion into kJ/kg
mprintf("u=%fkJ/kg\n",u2)
uf=3467.3 //in kJ/kg
T=T1+(((T2-T1)/(u2-u1))*(uf-u1))//by interpolation
mprintf("T=%fcelsius",T)//ans vary due to roundoff error

