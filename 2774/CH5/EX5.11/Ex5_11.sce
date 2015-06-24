clc
// initialization of variables
v1=0.5 // assumed as air is filled in half of the tank
v2=1 // final volume when partition is removed
R=0.287 // gas contant for air
//solution
q=0 // heat transfer is zero
w=0 // work done is zero
// temperatue is constant as no change in internal energy by first law
dels=R*log(v2/v1)// change in entropy when temperature is constant
printf("The change in specific entropy is %.3f kJ/kg.K",dels)

