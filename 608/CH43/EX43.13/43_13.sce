//Problem 43.13:For the coupled circuit shown in Figure 43.16, determiine the values of currents I1 and I2.

//initializing the variables:
E1 = 250; // in Volts
thetae1 = 0; // in degrees
R1 = %i*50; // in ohm
R2 = 10; // in ohm
R3 = 10; // in ohm
R4 = %i*50; // in ohm
R5 = 50; // in ohm
M = %i*10; // in ohm

//calculation:
//voltage
E1 = E1*cos(thetae1*%pi/180) + %i*E1*sin(thetae1*%pi/180)
//Applying Kirchhoff’s voltage law to the primary circuit gives
//(R1 + R2)*I1 - M*I2 = E1
//Applying Kirchhoff’s voltage law to the secondary circuit gives
//-1*M*I1 + ( R3 + R4 + R5)*I2 = 0
//solving these two
I2 = E1/((R1 + R2)*(R3 + R4 + R5)/(M) + (-1*M))
I1 = I2*(R3 + R4 + R5)/(M)

printf("\n\n Result \n\n")
printf("\n primary current I1 is %.2f +(%.2f)i A",real(I1), imag(I1))
printf("\n secondary current I2 is %.2f +(%.2f)i A",real(I2), imag(I2))
