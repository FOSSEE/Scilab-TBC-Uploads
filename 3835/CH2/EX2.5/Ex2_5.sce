clear
//
//case a
//v0/vs=r2/(r1+r2)=0.4r2=0.6r1
r1=10
r2=(0.6*r1)/(0.4)
printf("\n r2= %0.1f  ohm",r2)
//case b
//when r2 is parallel to r3
r3=200000
req=(r2*r3)/(r2+r3)
printf("\n req= %0.1f  ohm",req)
//v0/vs=0.5825
change=(0.6-0.5825)/(0.6)
printf("\n change")
r3=20000
req=(r2*r3)/(r3+r2)
printf("\n req= %0.1f  ohm",req)
//v0/vs=0.4615
change=(0.6-0.4615)/0.6
printf("\n change")
