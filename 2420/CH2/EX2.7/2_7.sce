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
Cbb1=Cb*Cco*12/(Cco2*12 + Cco*12)
Cbb2= Cb*(veca(3) /(veca(3) + veca(1)))
//results
printf("In case 1, Carbon burned per lb of fuel = %.5f lb per lb of fuel",Cbb1)
printf("\n In case 2, Carbon burned per lb of fuel = %.5f lb per lb of fuel",Cbb2)
