

                       // Example  13.15

Vl1=3300;                // The supply voltage
Vph1=Vl1/1.732;          // Primary phase voltage
N1=840;                  // No.Of Turns in Primary winding
N2=72;                   // No.Of Turns in secondary winding
Vph2=Vph1*(N2/N1);       // Secondary phase voltage
Vl2=Vph2;                // Secondary line voltage
disp(' Secondary line voltage on No load for (star/delta) = '+string(Vl2)+' Volt');

vph1=Vl1;                // Primary phase voltage
vph2=vph1*(N2/N1);       // Secondary phase voltage
vl2=vph2*1.732;          // Secondary line voltage
disp(' Secondary line voltage on No load for (delta/star) = '+string(round(vl2))+' Volt');







          //    p 514       13.15

