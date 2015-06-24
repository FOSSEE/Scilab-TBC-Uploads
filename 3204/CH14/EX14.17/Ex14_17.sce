// Initilization of variables
W=5000 // N // Total weight of the elevator
u=0 // m/s
v=2 // m/s // velocity of the elevator
s=2 // m // distance traveled by the elevator
t=2 // seconds // time to stop the lift
w=600 // N // weight of the man
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// Acceleration acquired by the elevator after travelling 2 m is given by,
a=sqrt((v^2-u^2)/(2*s)) // m/s^2
// (a) Let T be the the tension in the cable which is given by eq'n,
T=W*(1+(a/g)) // N
// (b) Motion of man
// Let R be the pressure experinced by the man.Then from the Eq'n of motion of man pressure is given as,
R=w*(1-(a/g)) // N 
// Results
clc
printf('(a) The Tensile force in the cable is %f N \n',T)
printf('(b) The pressure transmitted to the floor by the man is %f N \n',R)
