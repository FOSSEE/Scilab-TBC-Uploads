//Problem 25.04: Determine the values of currents I, I1 and I2 shown in the network of Figure 25.5.

//initializing the variables:
R1 = 8; // in ohm
R = 5; // in ohm
R2 = 6; // ohm
rv = 50; // in volts
thetav = 0; // in degrees

//calculation:
//voltage,V
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//circuit impedance, ZT
ZT = R + (R1*%i*R2/(R1 + %i*R2))
//Current I
I = V/ZT
//current,I1
I1 = I*(%i*R2/(R1 + %i*R2))
//current, I2
I2 = I*(R1/(R1 + %i*R2))

printf("\n\n Result \n\n")
printf("\n current, I is (%.2f + (%.2f)i) A,current,I1 is (%.2f + (%.2f)i) A, current, I2 is (%.2f + (%.2f)i) A ",real(I), imag(I),real(I1), imag(I1),real(I2), imag(I2))