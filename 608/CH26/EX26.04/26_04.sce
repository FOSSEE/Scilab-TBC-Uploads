//Problem 26.04:For the circuit shown in Figure 26.8, determine the active power developed between points (a) A and B, (b) C and D, (c) E and F.

//initializing the variables:
rv = 100; // in volts
thetav = 0; // in degrees
R = 5; // in ohm
R1 = 3; // in ohms
RL = %i*4; // in ohm
Rc = -10*%i; // in ohms

//calculation:
//impedance, Z1
Z1 = R1 + RL
//impedance, Zc
Zc = Rc
//Circuit impedance, Z
Z = R + (Z1*Zc/(Z1 + Zc))
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
I = V/Z
Imag = ((real(I))^2 + (imag(I))^2)^0.5
//Active power developed between points A and B
Pab = (Imag^2)*R
//Active power developed between points C and D
Pcd = (Imag^2)*real(Zc)
//Current, I1
I1 = I*Zc/(Zc + Z1)
I1mag = ((real(I1))^2 + (imag(I1))^2)^0.5
//active power developed between points E and F
Pef = (I1mag^2)*real(Z1)

printf("\n\n Result \n\n")
printf("\n (a)Active power developed between points A and B is %.2f W ",Pab)
printf("\n (b)Active power developed between points C and D is %.2f W ",Pcd)
printf("\n (c)Active power developed between points E and F is %.2f W ",Pef)