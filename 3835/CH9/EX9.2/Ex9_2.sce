clear
//
d=0.2
l=0.25
p=6
z=250
bav=0.9
n=800
a=2
ld=50
phy=0.045 //flux per pole=0.9*0.2*0.25
e=(phy*p*n*z)/(60*a)
ia=e/ld
//case a
t=(60*e*ia)/(2*3.14*n)
printf("\n torque= %0.1f  Nm",t)
//case b
po=e*ia
printf("\n power output= %0.1f  W",po)
