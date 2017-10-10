clear
//
//given
b=0.2
a=0.04
n=1000/(60) //rev/sec
t=500
//case a
//since coil is at right angles ang=0
printf("\n e(t)=0 V")
//case b
//when coil is 30deg to the field ang=60
//p=sin(60) 
p=0.8660254
e=2*3.14*a*n*b*t*p
printf("\n e(t)= %0.1f  V",e)
//case c
//when ang=90 that is coil is in the plane of the field
//p=sin(90)
p=1
e=2*3.14*b*a*n*p*t
printf("\n e(t)= %0.1f  V",e)
