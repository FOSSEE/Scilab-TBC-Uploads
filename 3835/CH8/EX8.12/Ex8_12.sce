clear
//
//case a total torque
//rotor phase voltage at standstill=400/2.25*3**0.5 =102.64v
ns=1500 //calculated using formula as above
e2=102.64
r2=0.1
s=0.04
x2=1.2
//t=(3*60*(e2**2)*(r2/s))/(2*3.14*1500*((0.1/0.04)**2)+(1.2)**2)
t=65.41
printf("\n t=65.41Nm")
//case b
N=1440 //calculated using same formula as above
o=(2*3.14*N*t)/60
//1 metric hp=735.5hp
output=o/735.5
printf("\n output= %0.1f  hp",output)
//case c
//condition for maximum torque is given by x2=r2/s
tmax=(3*e2**2)/(5*3.14*2*1.2)
printf("\n tmax= %0.1f  Nm",tmax)
//case d
s=r2/x2  //for max torque
speed=(1-s)*1500
printf("\n speed= %0.0f  rpm",speed)
