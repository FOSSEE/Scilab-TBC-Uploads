// determine blade angles at hub,mean and tip diameters
clc
Dt=4.5 // meter
Dh=2 // meter
p=20e6 //watts
N=150 // rpm
nh=0.94 // hydraulic efficiency 
n0=0.88 // overall efficiency
h=21 // head
g=9.8
Q=(p)/(n0*h*9800) // 
mprintf('\n Q =%f m3/s',Q)
vf=(4*Q)/(%pi*(Dt^2-Dh^2)) // velocity of flow
mprintf('\n Vf = %f m/s',vf)
Vw=(60*g*h*nh)/(2*N*%pi) // velocity of whirl
mprintf('\n rVw = %f',Vw)
D=(Dt+Dh)/2 // diameters
mprintf('\n D =%f',D)
rm=D/2 
mprintf('\n rm =%f',rm)
Vm1=Vw/rm
mprintf('\n Vm1= %f m/s',Vm1)
rt=rm+0.625
Vm2=Vw/rt
mprintf('\n Vm2 =%f m/s',Vm2)
rt=rm-0.625
Vm3=Vw/rt
mprintf('\n Vm2 =%f m/s',Vm3)
uh=(%pi*Dh*N)/60
mprintf('\n uh=%f m/s',uh)
um=(%pi*D*N)/60
mprintf('\n um=%f m/s',um)
ut=(%pi*Dt*N)/60
mprintf('\n ut=%f m/s',ut)
b1h=vf/(uh-Vm3)
mprintf('     hub       : ')
mprintf('\n tan(pi-beta1h)=  %f',b1h)
be=atand(b1h)
B1h=180-be
mprintf('\n B1h = %f degree',B1h)
B2=vf/uh
mprintf('\n B2h =%f degree ',atand(B2))
mprintf('     mean       : ')
b2h=vf/(um-Vm1)
mprintf('\n tan(pi-beta1h)=  %f',b2h)
be1=atand(b2h)
B2h=180-be1
mprintf('\n B1m = %f degree',B2h)
B2m=vf/um
mprintf('\n B1m =%f degree ',atand(B2m))
mprintf('\    ')
mprintf('\    ')
mprintf('\    ')
mprintf('         Tip:        ')
b3h=vf/(ut-Vm2)
mprintf('\n                      tan(pi-beta1h)=  %f',b3h)
be2=atand(b3h)
B3h=180-be2
mprintf('\n B1m = %f degree',B3h)
B3m=vf/ut
mprintf('\n B1m =%f degree ',atand(B3m))







