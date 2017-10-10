
//

//

l1=100
l2=80
l3=60

t2=39.5,t3=40.5,t4=49.75,


L2=l2*cos(t2*(%pi/180))
L3=l3*cos(t3*(%pi/180))

D2=l2*sin(t2*(%pi/180))
D3=l3*sin(t3*(%pi/180))

l41=(157.86+sqrt(157.86*157.86-4*1757.5))/2
l42=(157.86-sqrt(157.86*157.86-4*1757.5))/2

printf("\n length of DA is %0.3f or %0.3f ",l41,l42)

printf("\n when length of DA ,L=145.8')

k=cos(t4*(%pi/180))
k1=(L2+L3-(k*l41))/100
t1=acos(k1)
t1=t1*(180/(%pi))
printf("\n bearing at AB is=N %0.3f ",t1)


printf("\n when length of DA ,L=12.04')

k=cos(t4*(%pi/180))
k1=(L2+L3-(k*l42))/100
k1=k1+0.004
t11=acos(k1)
t11=t11*(180/(%pi))
printf("\n k1")
printf("\n bearing at AB is=N %0.3f ",t11)
