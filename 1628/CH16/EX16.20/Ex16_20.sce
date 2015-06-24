

                    // Examle 16.20

V=230;                    // Supplt voltage
Ia1=40;                   // Armature currernt Ia1
Ra=0.2;                   // Armature resistance
Rse=0.1;                  // Series field resistance
E1=V-Ia1*(Ra+Rse);        // Back emfat (24 A)
disp(' Back emfat (24 A) = '+string(E1)+' Voltage');

Ia2=20;                   // Armature currernt Ia2
E2=V-Ia2*(Ra+Rse);        // Back emfat (20 A)
disp(' Back emfat (20 A) = '+string(E2)+' Voltage');

N1=1000;                  // Speed of a Motor at I= 40A
N2=(E2*N1)/(E1*0.6);      // Speed of a Motor
disp(' Speed of a Motor = '+string(round(N2))+' rpm');




             // p 654      16.20