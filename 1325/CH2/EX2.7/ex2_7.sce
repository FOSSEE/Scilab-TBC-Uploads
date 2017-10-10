//to find the equivalent dynamical system 
//gravitaional force (g)=32.2 ft/s^2
clc
printf("\n")
//given
m=2.5//lb
a=6//in
k=3.8//in
l=9//in
c=3//in
w=22500
//k^2=ab
//case a) to find equivalent dynamic system
b=(k^2)/a
ma=(2.5*6)/8.42//m*a/a+b
mb=m-ma
printf("Mass ma =%.2f lb will be situated at 6 inches from cg and mb =%.2f lb will be situated at %.2f inches from cg in the equivalent dynamical system",ma,mb,b)
printf("\n")
//if two masses are situated at the bearing centres 
ma1=(2.5*6)/9
mb1=m-ma1
k1=(a*c)^.5
//t=m*((k1^2)-(k^2))*w
t=((2.5*(18-3.8^2))*22500)/(32.2*12*12)
printf("correction couple which must be applied in order that the two mass system is dynamically equivalent to the rod is given by %.2f lb ft\n",t)

