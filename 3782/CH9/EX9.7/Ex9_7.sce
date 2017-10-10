
//ch-9 page 308   pb-7
//

//

l1=725,l2=1050,l3=1250,l4=950,l5=575,

t1=60,t4=55.5,t5=2.75,



L1=l1*cos(t1*(%pi/180))
L4=-l4*cos(t4*(%pi/180))
L5=-l5*cos(t5*(%pi/180))
printf("\n latitudes of AB,DE,EA are %0.3f %0.3f %0.3f",L1,L4,L5)


D1=l1*sin(t1*(%pi/180))
D4=-l4*sin(t4*(%pi/180))
D5=-l5*sin(t5*(%pi/180))
printf("\n Depature of AB,DE,EA are %0.3f %0.3f %0.3f",D1,D4,D5)

t2_t3=acos(0.1750)
t2_t3=180-(t2_t3*(180/%pi))

printf("\n t2-t3= %0.3f ",t2_t3)

t3=asin(0.6035)
t3=t3*(180/%pi)
t2=t2_t3-t3
t2=ceil(t2)

printf("\n Bearing of BC is %0.3f ",t2)
printf("\n Bearing of CD is %0.3f ",t3)
