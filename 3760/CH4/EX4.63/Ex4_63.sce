clc;
v1=6; // hoist speed
i=60; // series current 
v=600; // supply voltage
r=0.5; // net resistance
g=9.81; // acceleration due to gravity
v2=4; // reduced hoist speed
Ea1=v-i*r; // counter EMf corresponding to v1
rx=((v-((v2/v1)*Ea1))/i)-r;
printf('External resistance to be added is %f ohms',rx);
