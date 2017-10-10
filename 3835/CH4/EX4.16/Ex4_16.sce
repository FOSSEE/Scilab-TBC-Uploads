clear
//
v=230
f=50
//voltage vr across r is in phase with the current i while voltage vc across c lage i by 90
//from phasor diagram v**2=vr**2+vc**2
vr=100
vc=((v**2)-(vr**2))**0.5
printf("\n vc= %0.1f  v",vc)
p=500 //power
i=p/vr
c=i/(2*3.14*f*vc)
printf("\n c= %e  F",c)
//case b
v=(2**0.5)*vc
printf("\n maximum voltage across c= %0.1f  V",v)
//case c
//phase angle=cosinverse(vr/v)=cosinverse(0.4348)=64.2
printf("\n phase angle=64.2")
