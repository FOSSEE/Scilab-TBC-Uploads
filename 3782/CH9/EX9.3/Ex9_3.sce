
//ch-9 page 305   pb-3
//

//

l1=100.5,l3=75,l4=50.5,

t1=30.5,t2=45,t3=40.5,t4=60,t5=40.25,



L1=l1*cos(t1*(%pi/180))
L3=-l3*cos(t3*(%pi/180))
L4=-l4*cos(t4*(%pi/180))

printf("\n latitude of AB,CD,DE are %0.3f %0.3f %0.3f",L1,L3,L4)
D1=l1*sin(t1*(%pi/180))
D3=-l3*sin(t3*(%pi/180))
D4=-l4*sin(t4*(%pi/180))
printf("\n Depature of AB,CD,DE are %0.3f %0.3f %0.3f",D1,D3,D4)

L2_L5=-(L1+L3+L4)
D2_D5=-(D1+D3+D4)
printf("\n L2_L5,D2_D5")

k=0.117
l5=(L2_L5+D2_D5)/(k)

k1=0.763

l2=(k1*l5)-L2_L5
l2=l2/0.707

printf("\n length of BC= %0.3f ",l2)
printf("\n length of EA= %0.3f ",l5)
