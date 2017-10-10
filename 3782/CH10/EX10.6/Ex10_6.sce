
//

//

r1=400
t1=30,d=200,

ct1=1500
k=1-(cos(t1*(%pi/180)))
T1G=r1*(k)

r2=(d-T1G)/k
printf("\n R2= %0.3f ",r2)

t1t2=(%pi*r1*t1)/180
t2t3=(%pi*r2*t1)/180
printf("\n length of arc T1T2= %0.3f ",t1t2)
printf("\n length of arc T2T3= %0.3f ",t2t3)

ct2=ct1+t1t2
ct3=ct2+t2t3

printf("\n chainage of point of reverse curvature = %0.3f ",ct2)
printf("\n chainage of finishing point T3= %0.3f ",ct3)
