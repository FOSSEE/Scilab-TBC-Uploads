
//

//

l1=75.5
l2=180.5
l3=60.25

t1=30.4,t2=69.4,t3=30.5,

t2=180-t2
t3=180-t3

Lc1=l1*cos(t1*(%pi/180))
Lc2=l2*cos(t2*(%pi/180))
Lc3=l3*cos(t3*(%pi/180))

Ls1=l1*sin(t1*(%pi/180))
Ls2=l2*sin(t2*(%pi/180))
Ls3=-l3*sin(t3*(%pi/180))

printf("\n Lc1,Lc2,Lc3")
printf("\n Ls1,Ls2,Ls3")
Lc4=-Lc1-Lc2-Lc3
Ls4=-Ls1-Ls2-Ls3

printf("\n Lc4,Ls4")

t4=-atan(Ls4/Lc4)
t4=t4*(180/%pi)

l4=sqrt(Lc4*Lc4+Ls4*Ls4)

printf("\n distance DA= %0.3f ",l4)
printf("\n bearing of DA= %0.3f ",t4)
