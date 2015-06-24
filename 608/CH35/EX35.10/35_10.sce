//Problem 35.10: An ac. source of 30/_0° V and internal resistance 20 kohm is matched to a load by a 20:1 ideal transformer. Determine for maximum power transfer (a) the value of the load resistance, and (b) the power dissipated in the load.

//initializing the variables:
rv = 30; // in volts
thetav = 0; // in degrees
r = 20000; // in ohms
tr = 20; // turn ratio

//calculation:
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180) 
//The network diagram is shown in Figure 35.13.
//For maximum power transfer, r1 must be equal to
r1 = r
//load resistance RL
RL = r1/tr^2
//The total input resistance when the source is connected to the matching transformer is
RT = r + r1
//Primary current
I1 = V/RT
//N1/N2 = I2/I1
I2 = I1*tr
//Power dissipated in load resistance RL is given by
P = RL*I2^2

printf("\n\n Result \n\n")
printf("\n (a)the value of the load resistance is %.0f ohm",RL)
printf("\n (b) Power dissipated in the load resistance is %.2E W",P)