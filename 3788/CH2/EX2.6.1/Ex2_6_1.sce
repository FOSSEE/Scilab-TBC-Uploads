//Example 2.6.1
//Doppler Shift for A leo Satellite

//Part1  Velocity of Satellite in Orbit
//Variables
re=6378                //radius of earth in km
h=1000                     //altitude in km
a=re+h
u=(3.986004418*10^5)

//Calculation
//Part1  Velocity of Satellite in Orbit
T=sqrt((4*(%pi^2)*(a^3)/u))
circum=2*%pi*a
vs=circum/T
printf("Velocity of Satellite is %f km/s\n",vs)

//Part2 Component of velocity towards the observer
D=re/a
vr=(vs*(re/a))
printf("Velocity of Satellite towards observer is %f km/s\n",vr)

//Part3  Doppler shift in received signal
VT=6354
lam=0.1132
Df=(VT/lam)/1000
disp(Df,'Doppler shift in kHz')

