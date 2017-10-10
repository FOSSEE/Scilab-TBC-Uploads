clc
v1=0.8854 //in metre-cube/kg
V=0.1 //in metre-cube
m=V/v1 //total mass
mprintf("m=%fkg\n",m)//ans vary due to roundoff error
v2=v1
vf=0.001053 //in metre-cube/kg
vg=1.159 //in metre-cube/kg
T=111.37 //in degree celsius
X2=(v2-vf)/(vg-vf)//quality of steam
mprintf("X2=%f\n",X2)//ans vary due to roundoff error
mvapor=X2*m
mprintf("Mass of vapor=%fkg\n",mvapor)//ans may vary due to roundoff error
mliquid=m-mvapor
mprintf("Mass of liquid=%fkg",mliquid)//ans may vary due to roundoff error
