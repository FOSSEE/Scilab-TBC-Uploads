
//ch-9 page 308   pb-6
//

//

l1=130,l2=215,l3=155.5,l4=120,

t1=20.5,t2=60.25,t3=30.5,t4=80.5,



L1=l1*cos(t1*(%pi/180))
L2=l2*cos(t2*(%pi/180))
L3=-l3*cos(t3*(%pi/180))
L4=l4*cos(t4*(%pi/180))
printf("\n latitudes of AB,BC,CD,DE are %0.3f %0.3f %0.3f %0.3f",L1,L2,L3,L4)


D1=l1*sin(t1*(%pi/180))
D2=l2*sin(t2*(%pi/180))
D3=l3*sin(t3*(%pi/180))
D4=l4*sin(t4*(%pi/180))
printf("\n Depature of AB,BC,CD,DE are %0.3f %0.3f %0.3f %0.3f",D1,D2,D3,D4)

L5=-(L1+L2+L3+L4)
D5=-(D1+D2+D3+D4)

l5=sqrt(L5*L5+(D5*D5))

printf("\n length of EA= %0.3f meters',l5)

t5=atan(D5/L5)
t5=t5*(180/%pi)
printf("\n bearing of EA= %0.3f ",t5)

FA=l5/2
l6=FA
t6=t5
L6=-l6*cos(t6*(%pi/180))
D6=-l6*sin(t6*(%pi/180))

L7=-(L1+L2+L6)
D7=-(D1+D2+D6)

t7=atan(D7/L7)
t7=t7*(180/%pi)
printf("\n bearing from F to C is = %0.3f ",t7)

l7=sqrt(L7*L7+(D7*D7))

printf("\n distance from F to C is = %0.3f ",l7)
