clc
clear
//Initialization of variables
mf=10000 //lb
mr=700 //lb
Cr=0.20
Cco2=14.1
Co2=5.1
Cco=0.1
Cf=0.66
//calculations
Cn2=100-(Cco2+Co2+Cco)
Ci=mf*Cf
Ca=mr*Cr
Cb=(Ci-Ca)/mf
Cb2=((mf*Cf)-mr*Cr)/(mf)
veca=[Cco2 Co2 Cco Cn2]
vecb=veca
vecb(1)=vecb(1) *44
vecb(2)=vecb(2) *32
vecb(3)=vecb(3) *28
vecb(4)=vecb(4) *28
sumvec=sum(vecb)
Lbc=Cco2*12 + Cco*12
Gc=sumvec/Lbc
Gf=Gc*Cb
//results
printf("Carbon in the dry products combustion = %.3f lb per lb of fuel",Cb)
printf("\n In case 2, Carbon in the dry products combustion = %.3f lb per lb of fuel",Cb2)
printf("\n Dry gaseous products of combstion per lb of coal = %.2f lb ",Gf)
