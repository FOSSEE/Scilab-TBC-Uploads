clc
// initialization of variables
x=0.7 // quality of steam
P1=200 // initial pressure in kPa
P2=800 // final pressure in kPa
V=2 // volume in m^3
//The values are taken from TABLE C.2
vf1=0.0010 //specific volume of saturated liquid at 200 kPa
vg1=0.8857 //specific volume of saturated gas at 200 kPa
uf1=504.5 // specific internal energy of saturated liquid @ state 1
ug1=2529.5 // speciific internal energy of saturated gas @ state 1

v1=vf1+x*(vg1-vf1); //specific volume of vapour
m=V/v1

u1=uf1+x*(ug1-uf1) // specific internal energy of vapour @ state 1
v2=v1 // constant volume process
u2=((0.6761-0.6203)*(3661-3853)/(0.6761-0.6181))+3853// from steam table @ 800kPa by interpolating
Q=m*(u2-u1)// heat transfer
printf("The heat transfer is "+string(Q)+" kJ")
  

