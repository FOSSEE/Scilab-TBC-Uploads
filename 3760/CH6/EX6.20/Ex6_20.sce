clc;
sA=0.05; //slip

//for part a
disp('for part a ');
//Torque is proportional to s/r2
//As per given conditions sB=a*sA
a=4;
sB=a*sA;
mprintf('The slip is %d times previous slip and \n',a);

//for part b
disp('for part b ');
//I2 is directly proportional to s/r2
//As per given conditions I2B=b*I2A
b=sB/(a*sA);
//Rotor ohmic losses is directly proportional to I*I*r2
//As per given conditions P2=c*P1
c=a*b;
//As per given conditions Pf2=d*Pf1
d=b;
mprintf('rotor current for new rotor resistance is equal to initial rotor current \n Rotor ohmic losses for new rotor resistance=%f times initial ohmic losses \n  power factor for new rotor resistance is equal to initial power factor',c);

//for part c
disp('for part c ');
//As per given conditions Wa=e*Ws
e=1-sA;
//Wb=f*Ws
b=1-sB;
//PB=g*PA
g=b/e;
mprintf('The power output is reduced to %f times previous value',g);




