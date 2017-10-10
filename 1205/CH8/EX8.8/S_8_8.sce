clc;
//Given
T2=3000;//N, Tension from side 2
us=0.25;// Coeffiecient of static friction between pulley and belt
uk=0.20;//Co=efficient of kinetic friction between pulley and belt
theta=60;//degree
theta=theta*%pi/180;//rad, conversion into radian
r=25;//mm, radius of shaft
r1=200;//mm, radius of machine tool
//Pulley B
b=%pi-theta;//rad, angle of contact, 
//By equation 8.14
T1=T2/(exp(us*b));//N, Tension from side 1

//Pulley A
//Aumming moment about A
MA=T2*r1-T1*r1;//N.mm, Couple MA applied to pulley which is equal and opposite to torque 
MA=MA/1000;//N.m , conversion to N.m
printf("The largest torque which can be exerted by belt on pulley A is MA= %0.0f N.m\n",MA);

