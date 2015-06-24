//Problem 25.08: For the series-parallel arrangement shown in Figure 25.9, determine (a) the equivalent series circuit impedance, (b) the supply current I, (c) the circuit phase angle, (d) the values of voltages V1 and V2, and (e) the values of currents IA and IB.

//initializing the variables:
RL1 = %i*1.02; // in ohm
R1 = 1.65; // in ohm
RLa = %i*7; // in ohm
Ra = 5; // in ohm
Rcb = -1*%i*15; // in ohm
Rb = 4; // in ohm
rv = 91; // in volts
thetav = 0; // in degree

//calculation:
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//impedance, Z1
Z1 = R1 + RL1
//impedance, Za
Za = Ra + RLa
//impedance, Zb
Zb = Rb + Rcb
//impedance, Z, of the two branches connected in parallel
Z = Za*Zb/(Za + Zb)
//Total circuit impedance
ZT = Z1 + Z
//Supply current, I
I = V/ZT
thetai = atan(imag(I)/real(I))*180/%pi
phi = thetav - thetai 
if (phi>0) then
    a = "lagging"
else
    a = "leading"
end
//Voltage V1
V1 = I*Z1
//Voltage V2
V2 = I*Z
//current Ia
Ia = V2/Za
//Current Ib
Ib = V2/Zb

printf("\n\n Result \n\n")
printf("\n (a)equivalent series circuit impedance is %.2f + (%.2f)i ohm ",real(ZT), imag(ZT))
printf("\n (b)supply current, I is %.2f + (%.2f)i A ",real(I), imag(I))
printf("\n (c)circuit phase relative is %s by %.2f° ",a,abs(phi))
printf("\n (d)voltage, V1 is (%.2f + (%.2f)i) V and V2 is(%.2f + (%.2f)i) V ",real(V1), imag(V1),real(V2), imag(V2))
printf("\n (e)current, Ia is (%.2f + (%.2f)i) A and Ib is(%.2f + (%.2f)i) A ",real(Ia), imag(Ia),real(Ib), imag(Ib))