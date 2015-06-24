//To find the velocity, impulse, angle of swing and average force
clc
//Given:
m=30 //kg
AG=1,GB=150/1000,k1=1.1,k2=350/1000 //m
theta=60*%pi/180 //rad
t=0.005 //s
a=AG,b=GB
//Solution:
//Calculating the mass moment of inertia of the pendulum about the point of suspension A
IA=m*k1^2 //kg-m^2
//Calculating the mass moment of inertia ofthe pendulum about centre of gravity G
IG=m*k2^2 //kg-m^2
//Calculating the angular velocity of the pendulum
h1=a-a*cos(theta)
omega=sqrt(2*m*9.81*h1/IA) //rad/s
//Calculating the striking velocity of the pendulum
v=omega*(a+b) //m/s
//Calculating the angular velocity of the pendulum just after the breakage of the specimen
omega1=sqrt(omega^2-2*54/IA)
//Calculating the linear velocity of G just before the breakage of specimen
vG=omega*AG //m/s
//Calculating the linear velocity of G just after the breakage of specimen
vGdash=omega1*AG //m/s
//Calculating the impulses at pivot A and knife edge B
//F1+F2=m*(vG-vGdash)                                .....(i)
//b*F2-a*F1=IG*(omega-omega1)                        .....(ii)
A=[1 1; -a b]
B=[m*(vG-vGdash); IG*(omega-omega1)]
V=A \ B
F1=V(1),F2=V(2)
//Calculating the angle of swing of the pendulum after impact
theta1=acos(a-1/2*IA*omega1^2/(m*9.81))/a //radians
//Calculating the average force exerted at the pivot
Fp=F1/t //N
//Calculating the average force exerted at the knife edge
Fk=F2/t //N
//Results:
printf("\n\n The striking velocity of the pendulum, v = %.2f m/s.\n",v)
printf(" Impulse at the pivot A, F1 = %.1f N.\n",F1)
printf(" Impulse at the knife edge B, F2 = %.1f N.\n",F2)
printf(" Angle of swing of the pendulum after impact, theta = %.2f degree.\n",theta1*180/%pi)
printf(" Average force exerted at the pivot is %d N.\n",Fp)
printf(" Average force exerted at the knife edge is %d N.\n\n",Fk)