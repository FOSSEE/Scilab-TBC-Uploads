clc;
mD=300;//kg, mass of dumbwaiter and load
mC=400;//kg counterweight
// Uniform motion
g=9.81;//m/s^2, acceleration due to gravity
vD=2.5;//m/s, speed of dumbwaiter
//Free body c
//apply sum(Fy)=0
T=mC*g/2;//N
//Free body D
//sum(Fy)=0
F=mD*g-T;//N
power=F*vD;//W

printf("Power delieverd when dumbwaiter is moving with constant speed of 2.5 m/s is %.0f W\n",power);

//Accelerated motion
aD=1;//m/s^2 acceleration of dumbwaiter
aC=-1/2*aD;//m/s^2 acceleration of counterweight
//Free body c
//apply sum(Fy)=0
T=mC*(g+aC)/2;//N
//Free body D
//sum(Fy)=0
F=mD*(g+aD)-T;//N
power=F*vD;//W
printf("Power delieverd when dumbwaiter is moving with acceleration 1 m/s^2 and having instataneous velocity 2.5 m/s is %.0f W\n",power);

printf("In book answers are rounded off");
