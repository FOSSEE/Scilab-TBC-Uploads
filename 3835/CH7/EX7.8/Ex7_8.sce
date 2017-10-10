clear
//
//case a
//case 1
v=6600  //voltage
ir=200  //armature current
xs=8   //reactance
e=(v**2+(ir*xs))**0.5
printf("\n E= %0.5f  V",e)
//case 2
//from triangle in the firgure the power angle is obtained as 13.63
printf("\n The power angle=13.63")
//case b
//due to excitation we obtain ix=217.10A
//case 3
ix=217.10
i=((ir**2+ix**2))**0.5
printf("\n Armature current= %0.5f  A",i)
//case 4
//power factor cos(angle)=ir/i=0.68
printf("\n power factor=0.68")
