//Problem 43.15:A mutual inductor is used to couple a 20 ohm resistive load to a 50/_0° V generator as shown in Figure 43.18. The generator has an internal resistance of 5 ohm and the mutual inductor parameters are R1 = 20 ohm , L1 = 0.2 H, R2 = 25 ohm , L2 = 0.4 H and M = 0.1 H. The supply frequency is 75/pi Hz. Determine (a) the generator current I1 and (b) the load current I2 .

//initializing the variables:
E1 = 50; // in Volts
thetae1 = 0; // in degrees
r = 5; // in ohm
R1 = 20; // in ohm
L1 = 0.2; // in Henry
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
//(r + R1 + %i*w*L1)*I1 - %i*w*M*I2 = E1
//Applying Kirchhoff’s voltage law to the secondary circuit gives
//-1*%i*w*M*I1 + ( R2 + RL + %i*w*L2)*I2 = 0
//solving these two
I2 = E1/((r + R1 + %i*w*L1)*(R2 + RL + %i*w*L2)/(%i*w*M) + (-1*%i*w*M))
I1 = I2*(R2 + RL + %i*w*L2)/(%i*w*M)

printf("\n\n Result \n\n")
printf("\n primary current I1 is %.2f +(%.2f)i A",real(I1), imag(I1))
printf("\n load current I2 is %.2f +(%.2f)i A",real(I2), imag(I2))
