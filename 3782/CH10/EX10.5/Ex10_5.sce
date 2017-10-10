
//

//

r=400
t1=15,t2=30,t3=60,

ct=900
l=320
BT2=r*(tan((t1)*%pi/180))
CT2=l-BT2

r1=(CT2)/(tan((t2)*%pi/180))

printf("\n R1= %0.3f ",r1)
t1t2=(%pi*r*t2)/(180)

t2t3=(%pi*r1*t3)/(180)

printf("\n length of arc T1T2= %0.3f ",t1t2)
printf("\n length of arc T2T3= %0.3f ",t2t3)


ct1=ct-BT2
ct3=ct1+t1t2+t2t3

printf("\n chainage of T1= %0.3f ",ct1)
printf("\n chainage of T3= %0.3f ",ct3)
