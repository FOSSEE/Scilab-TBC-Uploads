//To find strain energy, twist and speed
clc
//Given:
IA=22.5,IB=67.5 //kg-m^2
q=225 //N-m/rad
NA=150,NB=0 //rpm
//Calculating the angular speed of the flywheel
omegaA=2*%pi*NA/60 //rad/s
//Calculating the angular speed of both the flywheels at the instant their speeds are equal
omega=IA*omegaA/(IA+IB) //rad/s
//Calculating the kinetic energy of the system at that instant
E2=1/2*(IA+IB)*omega^2 //N-m
//Calculating the kinetic energy of the flywheel A
E1=1/2*IA*omegaA^2 //N-m
//Calculating the strain energy stored in the spring
E=E1-E2 //Strain energy stored in the spring, N-m
//Calculating the maximum twist of the spring
theta=sqrt(E*2/q) //radians
thetad=theta*180/%pi //Maximum twist, degrees
//Calculating the speed of each flywheel when the spring regains its initial unstrained condition
N=60*omega/(2*%pi)
NA1=2*N-NA //rpm
NB1=2*N-NB //rpm
//Results:
printf("\n\n The strain energy stored in the spring is %d N-m.\n",E)
printf(" The maximum twist of the spring, theta = %.1f degrees.\n",thetad)
printf(" The speed of flywheel A when the spring regains its initial unstrained condition, NA1 = %d rpm, i.e. %d rpm in the opposite direction.\n",NA1,-NA1)
printf(" The speed of flywheel B when the spring regains its initial unstrained condition, NB1 = %d rpm.\n",NB1)