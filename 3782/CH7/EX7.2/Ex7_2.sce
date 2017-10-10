


//

//


printf("\n chainage 15.5 and 27.5')
a1=15.5,b1=27.5,

//finding base and height of each triangle

base=b1-a1
o1=0,o2=22.5,

mo1=(o2+o1)/2
//calculating area
ae1=base*mo1
ap1=0
an1=ae1
printf("\n area GAM= %0.3f sq meters",ae1)

printf("\n chainage 15.5 and 50')
a1=15.5,b1=50,


base=b1-a1
o1=22.5,o2=30,

mo2=(o2+o1)/2

ae2=base*mo2
ap2=ae2
an2=0
printf("\n area GABI= %0.3f sq meters",ae2)


printf("\n chainage 50 and 75.5')
a1=50,b1=75.5,


base=b1-a1
o1=30,o2=35.5,

mo3=(o2+o1)/2

ae3=base*mo3
ap3=ae3
an3=0
printf("\n area IBCK= %0.3f sq meters",ae3)


printf("\n chainage 75.5 and 86.7')
a1=75.5,b1=86.7,


base=b1-a1
o1=35.5,o2=0,

mo4=(o2+o1)/2

ae4=base*mo4
ap4=ae4
an4=0
printf("\n area KCN= %0.3f sq meters",ae4)

printf("\n chainage 86.7 and 90')

a1=86.7,b1=90,


base=b1-a1
o1=0,o2=10.5,

mo5=(o2+o1)/2

ae5=base*mo5
ap5=0
an5=ae5
printf("\n area NLD= %0.3f sq meters",ae5)

printf("\n chainage 60 and 90')
a1=60,b1=90,


base=b1-a1
o1=10.5,o2=25.0,

mo6=(o2+o1)/2

ae6=base*mo6
ap6=ae6
an6=0
printf("\n area LDEJ= %0.3f sq meters",ae6)

printf("\n chainage 35.5 and 60')
a1=35.5,b1=60,


base=b1-a1
o1=25,o2=15,

mo7=(o2+o1)/2

ae7=base*mo7
ap7=ae7
an7=0
printf("\n area JEFH= %0.3f sq meters",ae7)

printf("\n chainage 27.5 and 35.5')
a1=27.5,b1=35.5,


base=b1-a1
o1=15,o2=0,

mo8=(o2+o1)/2

ae8=base*mo8
ap8=ae8
an8=0
printf("\n area FHM= %0.3f sq meters",ae8)

an=an1+an2+an3+an4+an5+an6+an7+an8
ap=ap1+ap2+ap3+ap4+ap5+ap6+ap7+ap8

area=ap-an
printf("\n ap,ae= %0.3f %0.3f",ap,an)
printf("\n total area of field = %0.3f sq meters ",area)
