
                       // Example  13.6

f=50;                              // Frequency
A=9*10^-4;                         // Area of the Core
Bm=1;                              // The Peak Value of Flux Density
Qm=Bm*A;                           // The Peak Value of Flux

E3=6;                              // Voltage in Tertiary winding
N3=E3/(4.44*f*Qm);                 // No.Of Turns in Tertiary winding
disp(' No.Of Turns in Tertiary winding = '+string(round(N3*2)) +' turns');


E1=230;                             // Voltage in Primary winding
N03=round(N3);                      // Round figure
N1=(N03*E1)/E3;                     // No.Of Turns in Primary winding
disp(' No.Of Turns in Primary winding = '+string(round(N1)) +' turns');


E1=230;         
E2=110;                             // Voltage in Secondary winding
N2=(N03*E2)/E3;                     // No.Of Turns in Secondary winding
disp(' No.Of Turns in Secondary winding = '+string(round(N2)) +' turns');





          //  p 491      13.6

