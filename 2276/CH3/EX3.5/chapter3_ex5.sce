clc
clear

//input
d=0.25;//diameter of a pulley placed on the end of hte shaft of a d.c. motor in meter
m=60;//mass attached by a rope to the pulley in kg
w=50;//angular velocity of the pulley in rad/sec

//calculations
f=m*9.81;//force acting on the pulley in newton meter
W=f*%pi*d;//work done in one revolution
v=(d/2)*w;
p=(f*v)/1000;//power in kilo watts 

//output
mprintf('yhe output of the motor is %3.2f kW',p)
