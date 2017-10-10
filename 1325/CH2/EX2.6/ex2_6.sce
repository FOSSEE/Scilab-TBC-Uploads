//to find radius of gyration about the mass centre
//gravitaional force (g)=32.2 ft/s^2
clc
//given
printf("\n")
m1=150
l=8.5
g=32.2
a=83.2
n=25
//k=(a/2*%pi*n)*(g/l)^0.5
k=(14*a*((g)^0.5))/(2*%pi*n*(l^0.5))
k1=14.5/12
printf("radius of gyration is %.2f inches which is equal to %.2f ft \n",k,k1)
moi=m1*(k1^2)
printf("moment of inertia=%.2f lb ft^2",moi)
