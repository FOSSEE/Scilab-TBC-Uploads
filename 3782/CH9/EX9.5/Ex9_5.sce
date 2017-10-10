
//ch-9 page 308   pb-5
//

//

l1=150.5,l2=200,l3=125,

t1=50.25,t2=30.5,t3=60.5,



L1=-l1*cos(t1*(%pi/180))
L2=-l2*cos(t2*(%pi/180))
L3=-l3*cos(t3*(%pi/180))
printf("\n latitudes of BQ,QP,PA are %0.3f %0.3f %0.3f",L1,L2,L3)


D1=l1*sin(t1*(%pi/180))
D2=-l2*sin(t2*(%pi/180))
D3=-l3*sin(t3*(%pi/180))
printf("\n Depature of BQ,QP,PA are %0.3f %0.3f %0.3f",D1,D2,D3)

L4=-(L1+L2+L3)
D4=-(D1+D2+D3)

l4=sqrt(L4*L4+(D4*D4))

printf("\n length of AB= %0.3f meters',l4)

t4=atan(D4/L4)
t4=t4*(180/%pi)
printf("\n bearing of AB= %0.3f ",t4)

PAB=t3-t4
QBA=t1+t4

printf("\n PAB= %0.3f QBA= %0.3f ",PAB,QBA)
