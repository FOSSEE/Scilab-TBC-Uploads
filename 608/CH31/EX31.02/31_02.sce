//Problem 31.02: For the a.c. network shown in Figure 31.3 determine, using mesh-current analysis, (a) the mesh currents I1 and I2 (b) the current flowing in the capacitor, and (c) the active power delivered by the 100/_0° V voltage source.

//initializing the variables:
rv = 100; // in volts
thetav = 0; // in degrees
R1 = 5; // in ohm
R2 = -1*4*%i; // in ohm
R3 = 4; // in ohm
R4 = %i*3; // in ohm

//calculation:
//voltages
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//Currents I1, I2 with their directions are shown in Figure 31.03.
//Two loops are chosen. The choice of loop directions is arbitrary.
//using kirchoff rule in 2 loops
//two eqns obtained
//(R1 + R2)*I1 - R2*I2 = V
//-1*R2*I1 + (R3 + R2 + R4)*I2 = 0
//using determinants
d1 = [V -1*R2; 0 (R3 + R2 + R4)]
D1 = det(d1)
d2 = [(R1 + R2) V; -1*R2 0]
D2 = det(d2)
d = [(R1 + R2) -1*R2; -1*R2 (R3 + R2 + R4)]
D = det(d)
I1 = D1/D
I2 = D2/D
I1mag = (real(I1)^2 + imag(I1)^2)^0.5
//Current flowing in capacitor
Ic = I1 - I2
//Source power P
phi = atan(imag(I1)/real(I1))
P = V*I1mag*cos(phi)
Icmag = (real(Ic)^2 + imag(Ic)^2)^0.5

printf("\n\n Result \n\n")
printf("\n (a)current, I1 is %.2f + (%.2f)i A, current, I2 is  %.2f + (%.2f)i A",real(I1), imag(I1),real(I2), imag(I2))
printf("\n (b)current in the capacitor is %.2f A",Icmag)
printf("\n (c)Source power P is %.2f W",P)