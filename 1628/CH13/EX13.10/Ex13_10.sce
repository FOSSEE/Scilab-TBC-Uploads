
                       // Example  13.10

kVA=50000;             // Single Phase supply
V1=4400;               // Voltage in primary winding
V2=220;                // Voltage in Secondary winding
R1=3.45;               // primary Resistance
R2=0.009;              // Secondary Resistance
X1=5.2;                // primary Reactance
X2=0.015;              // Secondary Reactance
I1=kVA/V1;             // primary Current
I2=kVA/V2;             // Secondary Current
k=V2/V1;               // Turns constant

Re1=R1+(R2/k^2);           // Equivalent Resistance referred to Primary
disp(' Equivalent Resistance referred to Primary = '+string(Re1)+' Ohm');

Re2=k^2*R1+R2;             // Equivalent Resistance referred to Secondary
disp(' Equivalent Resistance referred to Secondary = '+string(Re2)+' Ohm');

Xe1=X1+(X2/k^2);          // Equivalent Impedance referred to Primary
disp(' Equivalent Impedance referred to Primary = '+string(Xe1)+' Ohm');

Xe2=k^2*X1+X2;            // Equivalent Reactance referred to Secondary
disp(' Equivalent Reactance referred to Secondary = '+string(Xe2)+' Ohm');

Ze1=sqrt(Re1^2+Xe1^2);    // Equivalent Impedance referred to Primary
disp(' Equivalent Impedance referred to Primary = '+string(Ze1)+' Ohm');

Ze2=sqrt(Re2^2+Xe2^2);    // Equivalent Impedance referred to Secondary
disp(' Equivalent Impedance referred to Secondary = '+string(Ze2)+' Ohm');

i2=227.27;                // Round off value of I2 
i1=11.36;                 // Round off value of I1 
r1=3.45;                  // Round off value of R1 
r2=0.009;                 // Round off value of R2 

P=i1^2*r1+round(i2)^2*r2; // Total Copper loss
disp(' Total Copper loss = '+string(round(P))+' Watt');

re1=7.05;                 // Round off value of Re1 
P1=i1^2*re1;              // Total Copper loss By Equivalent Re1
disp(' Total Copper loss By Equivalent Re1 = '+string(P1)+' Watt');

re2=0.0176;               // Round off value of Re2 
P2=i2^2*re2;              // Total Copper loss By Equivalent Re2
disp(' Total Copper loss By Equivalent Re2 = '+string(round(P2))+' Watt');



         // p 503         13.10       


