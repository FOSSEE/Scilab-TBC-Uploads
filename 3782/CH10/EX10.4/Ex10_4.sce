
//

//

ab=30,bc=90,cd=140,

l1=250,l2=150,l3=325,


abc=210-bc
t1=0.5*abc
bcd=270-cd
t2=0.5*bcd
t3=180-(t1+t2)


k=(sin(t2*(%pi/180)))/(sin(t3*(%pi/180)))
OB=l2*k
k1=(sin(t1*(%pi/180)))/(sin(t3*(%pi/180)))
OC=l2*k1
printf("\n OB,OC")
R=OB*(sin(t1*(%pi/180)))
printf("\n Radius R= %0.3f ",R)

BT1=OB*(cos(t1*(%pi/180)))
CT1=OC*(cos(t2*(%pi/180)))

printf("\n Tangent length BT1= %0.3f ",BT1)
printf("\n Tangent length CT1= %0.3f ",CT1)
