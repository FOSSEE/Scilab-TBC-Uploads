
//

//

a=126.8
t=180-a
r=300
//b
tl=r*tan((t/2)*(%pi/180))
printf("\n Tangent length = %0.3f ",tl)

//c
loc=(%pi*r*t/180)
printf("\n Length of curve = %0.3f ",loc)

//d
l=510.23
ct1=l-tl
ct2=ct1+loc

printf("\n chainage of T1= %0.3f ",ct1)
printf("\n chainage of T2= %0.3f ",ct2)

//f
n=9
b=30
cc=ct1+270
lfsc=ct2-cc
printf("\n chainage covered= %0.3f ",cc)
printf("\n Length of final sub cord= %0.3f ",lfsc)

O1=(b*b)/(2*r)
O2=(b*b)/r

O10=(lfsc*(b+lfsc))/(2*r)

printf("\n first ofset= %0.3f ",O1)
printf("\n second ofset= %0.3f ",O2)
printf("\n tenth ofset= %0.3f ",O10)
