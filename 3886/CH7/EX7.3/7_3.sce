//Length of belt
N2=80
N1=200
d1=240
d2=d1*N1/N2  //mm
r1=120  //mm
r2=300  //mm
l=2500  //mm
//length of crossbelt
L=%pi*(r1+r2)+2*l+((r1+r2)^2)/l  //mm
printf("The length of crossbelt L=%.2f mm",L)
