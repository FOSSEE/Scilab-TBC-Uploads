//Problem 43.14:The circuit diagram of an air-cored transformer winding is shown in Figure 43.17. The coefficient of coupling between primary and secondary windings is 0.70. Determine for the circuit (a) the mutual inductance M, (b) the primary current I1 and (c) the secondary terminal p.d.

//initializing the variables:
re = 40; // in Volts
thetae1 = 0; // in degrees
R1 = 5; // in ohm
L1 = 0.001; // in Henry
L2 = 0.006; // in Henry
R2 = 40; // in ohm
rzl = 200; // in ohm
thetazl = -60; // in degrees
k = 0.70
f = 20000; // in Hz

//calculation:
w = 2*%pi*f
//voltage
E1 = re*cos(thetae1*%pi/180) + %i*re*sin(thetae1*%pi/180)
//impedance
ZL = rzl*cos(thetazl*%pi/180) + %i*rzl*sin(thetazl*%pi/180)
//mutual inductance, M
M = k*(L1*L2)^0.5
//Applying Kirchhoff’s voltage law to the primary circuit gives
//(R1 + %i*w*L1)*I1 - %i*w*M*I2 = E1
//Applying Kirchhoff’s voltage law to the secondary circuit gives
//-1*%i*w*M*I1 + ( R2 + ZL + %i*w*L2)*I2 = 0
//solving these two
I1 = E1/((R1 +%i*w*L1) - (%i*w*M)^2/(R2 + ZL + %i*w*L2))
I2 = 250/(350 + %i*180);
//secondary terminal p.d.
pd = I2*ZL

printf("\n\n Result \n\n")
printf("\n mutual induction M is %.2E H",M)
printf("\n primary current I1 is %.2f +(%.2f)i A",real(I1), imag(I1))
printf("\n secondary terminal p.d. is %.2f +(%.2f)i V",real(pd), imag(pd))