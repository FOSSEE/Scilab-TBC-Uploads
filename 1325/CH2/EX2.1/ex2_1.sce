//to find velocity and change in kinetic energy when impact between two spheres moving in a same line is a) INELASTIC , b) ELASTIC , c) e = 0.6
clc
//a) INELASTIC
//for sphere 1 ,mass=m1 and initial velocity=u1 
//for sphere 2 ,mass=m2 and initial velocity=u2
m1=100//lb
u1=10//ft/s
m2=50//lb
u2=5//ft/s
v=(m1*u1+m2*u2)/(m1+m2)
//change in kinetic energy
//initial kinetic energy = ke1
ke1=(m1*(u1^2)+m2*(u2^2))/(2*32.2)
//Kinetic Energy after inelastic colision = ke2
ke2=((m1+m2)*8.333^2)/(2*32.2)
//Change in Kinetic Energy =l
l=ke1-ke2
//b) Elastic
// for a very short time bodies will have a common velocity given by v=8.333 ft/s
// for a very short time bodies will have a common velocity given by v=8.333 ft/s
//immidiately after impact ends the velocities for both the bodies are given by v1 and v2
v1=2*v-u1
v2=2*v-u2
//c) Coeeficient of Restitution=0.6
e=0.6
ve1=(1+e)*v-e*u1
ve2=(1+e)*v-e*u2
ke3=(m1*(ve1^2)+m2*(ve2^2))/(2*32.2)
loss=ke1-ke3
printf("kinetic energy before collisio0n is %f ft lb\n",ke1)
printf("\n")
printf("a) INELASTIC\n")
printf("\n")
printf("velocity after collision is %f ft/s\n",v)
printf("the Kinetic Energy after collision is %f ft lb\n",ke2) 
printf("the change in Kinetic Energy after collision is %f ft lb\n",l)
printf("\n")
printf("b) ELASTIC\n")
printf("\n")
printf("velocity of 1 after collision is %f ft/s\n",v1)
printf("velocity of 2 after collision is %f ft/s\n",v2)
printf("there is no loss of kinetic energy in case of elastic collision\n")
printf("\n")
printf("c) e=0.6\n")
printf("\n")
printf("velocity of 1 after collision is %f ft/s\n",ve1)
printf("velocity of 2 after collision is %f ft/s\n",ve2)
printf("the Kinetic Energy after collision is %f ft lb\n",ke3) 
printf("the change in Kinetic Energy after collision is %f ft lb\n",loss)
