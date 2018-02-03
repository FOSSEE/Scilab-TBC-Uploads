clear
//
n=1.25                 //number of turns
o=2*3.14*n              //angle of contact
u=0.3                 //coefficient of friction
t=600.0                //force at the other end of the rope
//if the impending motion of the weight be downward.
T2=t*%e**(u*o)
W=T2
printf("Maximum weight is %f",W)
printf("\n answer in textbook is wrong") 
//if the impending motion of weight be upwards
T1=t*%e**(-1*u*o)
W=T1
printf("\n  Minimum weight is %f",W)
