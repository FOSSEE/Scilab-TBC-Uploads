//Block on inclined plane
//refer fig. 17.5
theta=atand(5/12)  //degree
N=130*cosd(theta)  //N
mu=0.3
F=mu*N  //N
//Force down the plane
R=130*sind(theta)-36  //N
u=2.4  //m/sec
//v is final velocity
t=5  //sec
//applying impulse momentum equation
v=((14*5*9.81)/(130))+2.4  //m/sec
printf("\nv=%.3f m/sec",v)

