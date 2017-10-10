
//

//

sp=80
v=(sp*1000)/(60*60)
cr=(1/8)
g=9.81
a=60

//a

r=(v*v)/(g*cr)
printf("\n radius of circular curvature= %0.3f ",r)

//b
k=0.3
l=(v*v*v)/(k*r)
printf("\n length of transistion curve = %0.3f ",l)

sa=l/(2*r)
sa=sa*(180/(%pi))
printf("\n spiral angle= %0.3f ",sa)
ca=a-(2*sa)
printf("\n central angle= %0.3f ",ca)

lcc=(%pi*r*ca)/180
printf("\n length of circular curve = %0.3f ",lcc)

s=(l*l)/(24*r)
printf("\n shift of curve = %0.3f ",s)
ag=a/2
t=(r+s)*(tan(ag*(%pi/180)))+(l/2)
printf("\n tangent length = %0.3f ",t)
//c
cip=1150
c1t=cip-t
c1j=c1t+l
c2j=c1j+lcc
c2t=c2j+l

printf("\n chainage of 1st tangent point = %0.3f ",c1t)
printf("\n chainage of 2nd tangent point = %0.3f ",c2t)

printf("\n chainage of 1st junction point = %0.3f ",c1j)
printf("\n chainage of 2nd junction point = %0.3f ",c2j)
