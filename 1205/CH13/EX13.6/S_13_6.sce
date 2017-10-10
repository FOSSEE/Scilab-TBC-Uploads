clc;
m=1.5;//kg, massof collar
Lo=150;//mm, Undeformed length of spring
k=400;//N/m, spring constant
Ldc=175;//mm
Loc=125;//mm, radius

//Position 1
//Kinetic energy
vA=0;//m/s
TA=0;//J

//Potential energy
delLad=Ldc+2*Loc-Lo;//mm, compression of spring
delLad=delLad/1000;//m, conversion to meter
VA=1/2*k*delLad^2;//J

//Position B
//Kinetic energy
//TB=1/2*m*vB^2;
Lbd=sqrt((Ldc+Loc)^2+Loc^2);//mm
delbd=Lbd-Lo;//mm compression
delbd=delbd/1000;//m, conversion into m
VB=1/2*k*delbd^2;//J

//Conservation of energy

vB=sqrt((VA-VB)/(1/2*m));//m/s
printf("Velocity of collar as it passes through B is vB= %.2f m/s \n",vB);
