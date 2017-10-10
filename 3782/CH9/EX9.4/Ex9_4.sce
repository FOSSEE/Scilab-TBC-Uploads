
//ch-9 page 307   pb-4
//

//

l1=75.5,l2=80.25,l3=75,

t1=30.25,t2=40.5,t3=60.5,



L1=l1*cos(t1*(%pi/180))
L2=-l2*cos(t2*(%pi/180))
L3=-l3*cos(t3*(%pi/180))
printf("\n latitudes of AQ,QR,RB are %0.3f %0.3f %0.3f",L1,L2,L3)


D1=l1*sin(t1*(%pi/180))
D2=l2*sin(t2*(%pi/180))
D3=-l3*sin(t3*(%pi/180))
printf("\n Depature of AQ,QR,RB are %0.3f %0.3f %0.3f",D1,D2,D3)

L4=-(L1+L2+L3)
D4=-(D1+D2+D3)

l4=sqrt(L4*L4+(D4*D4))

printf("\n length of AB= %0.3f meters',l4)
