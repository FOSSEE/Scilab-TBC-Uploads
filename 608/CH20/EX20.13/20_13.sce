//Problem 20.13: A transformer has 600 primary turns and 150 secondary turns. The primary and secondary resistances are 0.25 ohm and 0.01 ohm respectively and the corresponding leakage reactances are 1.0 ohm and 0.04 ohm  respectively. Determine (a) the equivalent resistance referred to the primary winding, (b) the equivalent reactance referred to the primary winding, (c) the equivalent impedance referred to the primary winding, and (d) the phase angle of the impedance.

//initializing the variables:
N1 = 600; // prim turns
N2 = 150; // sec turns
R1 = 0.25; // in ohms
R2 = 0.01; // in ohms
X1 = 1.0; // in ohms
X2 = 0.04; // in ohms

//calculation:
tr = N1/N2 // turn ratio
vr = tr // voltage ratio = turn raio, vr = V1/V2
//equivalent resistance Re
Re = R1 + R2*(vr^2)
//equivalent reactance, Xe
Xe = X1 + X2*(vr^2)
//equivalent impedance, Ze
Ze = (Re*Re + Xe*Xe)^0.5
//cos(phie) = Re/Ze
pfe = Re/Ze
phie = acos(pfe)
phied = phie*180/%pi // in °(deg)

printf("\n\n Result \n\n")
printf("\n (a)the equivalent resistance referred to the primary winding is %.2f ohm", Re)
printf("\n (b)the equivalent reactance referred to the primary winding is %.2f ohm", Xe)
printf("\n (c)the equivalent impedance referred to the primary winding is %.2f ohm", Ze)
printf("\n (d)phase angle is %.2f°", phied)