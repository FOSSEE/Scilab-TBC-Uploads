clear
//Given
P=-0.8                 //d
v1=-15.0              //cm 
v2=-100.0              //cm

//Calculation
f=100/P
u1=1/((1/v1)-1/f)
u2=1/((1/v2)-(1/f))

//Result
printf("\n The person can see objects lying between %0.0f cm and %0.3f cm",-u1,-u2)
