//Problem 43.16:The mutual inductor of problem 43.15 is connected to the circuit of Figure 43.19. Determine the source and load currents for (a) the windings as shown (i.e. with the dots adjacent), and (b) with one winding reversed (i.e. with the dots at opposite ends). 

//initializing the variables:
E1 = 50; // in Volts
thetae1 = 0; // in degrees
r = 5; // in ohm
R1 = 20; // in ohm
L1 = 0.2; // in Henry
R = 8; // in ohm
L = 0.1; // in Henry
L2 = 0.4; // in Henry
R2 = 25; // in ohm
RL = 20; // in ohm
M = 0.1; // in Henry
f = 75/%pi; // in Hz

//calculation:
w = 2*%pi*f
//voltage
E1 = E1*cos(thetae1*%pi/180) + %i*E1*sin(thetae1*%pi/180)
//Applying Kirchhoff’s voltage law to the primary circuit gives
//(r + R1 + %i*w*L1 + R + %i*w*L)*I1 - (%i*w*M + R + %i*w*L)*I2 = E1
//Applying Kirchhoff’s voltage law to the secondary circuit gives
//-1*(%i*w*M + R + %i*w*L)*I1 + (R2 + RL + %i*w*L2 + R + %i*w*L)*I2 = 0
//solving these two
I2 = E1/((r + R1 + %i*w*L1 + R + %i*w*L)*(R2 + RL + %i*w*L2 + R + %i*w*L)/((%i*w*M + R + %i*w*L)) + (-1*(%i*w*M + R + %i*w*L)))
I1 = I2*(R2 + RL + %i*w*L2 + R + %i*w*L)/(%i*w*M + R + %i*w*L)
//reversing
//Applying Kirchhoff’s voltage law to the primary circuit gives
//(r + R1 + %i*w*L1 + R + %i*w*L)*I1r - (-1*%i*w*M + R + %i*w*L)*I2r = E1
//Applying Kirchhoff’s voltage law to the secondary circuit gives
//-1*(-1*%i*w*M + R + %i*w*L)*I1r + (R2 + RL + %i*w*L2 + R + %i*w*L)*I2r = 0
//solving these two
I2r = E1/((r + R1 + %i*w*L1 + R + %i*w*L)*(R2 + RL + %i*w*L2 + R + %i*w*L)/((-1*%i*w*M + R + %i*w*L)) + (-1*(-1*%i*w*M + R + %i*w*L)))
I1r = I2r*(R2 + RL + %i*w*L2 + R + %i*w*L)/((-1*%i*w*M + R + %i*w*L))

printf("\n\n Result \n\n")
printf("\n primary current I1 is %.2f +(%.2f)i A",real(I1), imag(I1))
printf("\n load current I2 is %.2f +(%.2f)i A",real(I2), imag(I2))
printf("\n reversed primary current I1r is %.2f +(%.2f)i A",real(I1r), imag(I1r))
printf("\n reversed load current I2r is %.2f +(%.2f)i A",real(I2r), imag(I2r))
