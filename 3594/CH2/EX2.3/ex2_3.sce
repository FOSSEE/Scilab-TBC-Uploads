
clc
//given
m1=500//lb ft^2
m2=1500//lb ft^2
k=150//lb ft^2
w1=150//rpm

N=(w1*m1)/(m1+m2)
printf("Angular velocity at the instant when speeds of the flywheels are equalised is given by %.2f r.p.m\n",N)
//kinetic energy at this instance 
ke1=(1/2)*((m1+m2)/32.2)*((%pi*N)/30)^2
printf("The kinetic energy of the system at this instance is %.2f ft lb\n",ke1)
printf("which is almost equal to 480 ft lb \n")
//initial kinetic energy
ke0=(1/2)*((m1)/32.2)*((%pi*w1)/30)^2
printf("The initial kinetic energy of the system is %.2f ft lb\n",ke0)
printf("which is almost equal to 1915 ft lb \n")
//strain energy = s
s=ke0-ke1
printf("strain energy stored in the spring is %.2f ft lb which is approximately 1435 ft lb\n",s)

x=((1435*2)/150)^.5
printf("Maximum angular displacement is %.2f in radians which is equal to 250 degrees\n",x)
//na1 and na are initial and final speeds of the flywheel 1 and same nb1 and nb for flywheel 2 
na=2*N-w1//w1=na1
nb=2*N-0//nb1=0
printf ("Speed of flywheel a and b when spring regains its unstrained position are %.2f rpm and %.2f rpm respectively\n",na,nb)
