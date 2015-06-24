//Problem 32.05: Use the superposition theorem to determine, for the network shown in Figure 32.25, (a) the magnitude of the current flowing in the capacitor, (b) the p.d. across the 5 ohm resistance, (c) the active power dissipated in the 20 ohm resistance and (d) the total active power taken from the supply.

//initializing the variables:
rv1 = 50; // in volts
rv2 = 30; // in volts
thetav1 = 0; // in degrees
thetav2 = 90; // in degrees
R1 = 20; // in ohm
R2 = 5; // in ohm
R3 = -1*%i*3; // in ohm
R4 = 8; // in ohm
R5 = 8; // in ohm

//calculation:
//voltage
V1 = rv1*cos(thetav1*%pi/180) + %i*rv1*sin(thetav1*%pi/180)
V2 = rv2*cos(thetav2*%pi/180) + %i*rv2*sin(thetav2*%pi/180)
//The network is redrawn with the V2 source removed, as shown in Figure 32.26.
//Currents I1 to I5 are shown labelled in Figure 32.26. 
//current
Re1 = R4*R5/(R5 + R4) + R3
Re2 = Re1*R2/(R2 + Re1)
I1 = V1/(Re2 + R1)
I2 = (Re1/(R2 + Re1))*I1
I3 = (R2/(Re1 + R2))*I1
I4 = (R4/(R4 + R5))*I3
I5 = I3 - I4
//The original network is redrawn with the V1 source removed, as shown in Figure 32.27.
//Currents I6 to I10 are shown labelled in Figure 32.27
Re3 = R1*R2/(R1 + R2)
Re4 = Re3 + R3
Re5 = Re4*R4/(Re4 + R4)
Re6 = Re5  + R5
I6 = V2/Re6
I7 = (Re4/(Re4 + R4))*I6
I8 = (R4/(Re4 + R4))*I6
I9 = (R1/(R1 + R2))*I8
I10 = (R2/(R1 + R2))*I8
//current flowing in the capacitor is given by
Ic = I3 - I8
//magnitude of the current in the capacitor
Icmag = (real(Ic)^2 + imag(Ic)^2)^0.5
//
i1 = I2 + I9
i1mag = (real(i1)^2 + imag(i1)^2)^0.5
//magnitude of the p.d. across the 5 ohm resistance is given by
Vr5m = i1mag*R2
//Active power dissipated in the 20 ohm resistance is given by
i2 = I1 - I10
i2mag = (real(i2)^2 + imag(i2)^2)^0.5
phii2 = atan(imag(i2)/real(i2))
Pr20 = R1*(i2mag)^2
//Active power developed by the V1
P1 = rv1*i2mag*cos(phii2)
//Active power developed by V2 source
i3 = I6 - I5
i3mag = (real(i3)^2 + imag(i3)^2)^0.5
phii3 = atan(imag(i3)/real(i3))
if ((imag(i3)>0) & (real(i3)<0)) then
    phii3 = phii3 + %pi
end
P2 = rv2*i3mag*cos(phii3 - (thetav2*%pi/180))
//Total power developed
P = P1 + P2

printf("\n\n Result \n\n")
printf("\n(a)the magnitude of the current flowing in the capacitor is %.2f A",Icmag)
printf("\n(b) the p.d. across the 5 ohm resistance is %.3f V",Vr5m)
printf("\n(c)the active power dissipated in the 20 ohm resistance is %.0f W",Pr20)
printf("\n(d)the total active power taken from the supply is %.1f W",P)