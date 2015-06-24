
                    // Example  14.8

Q=30;                       // Angle between 2 slots
q1=6;                       // No.Of coils
sa=sind((q1*Q)/2);          // Distribution factor (Numerator part )
sb=sind(Q/2);               // Distribution factor (denominator part )
kd=sa/(q1*sb);              // Distribution factor
Vc=6*10;                    // Voltage induced in 6 coils
Er=kd*Vc;                   // Net emf induced in Six coils
disp(' Net emf induced in Six coils = '+string(Er)+' Volt');





             //  p 573          14.8
