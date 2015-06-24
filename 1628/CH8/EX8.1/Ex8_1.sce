
                 // Example 8.1

         // From diagram 8.3

         //  Equivalent resistance i.e Req= 20+ (20||10)

Req= 20+{(20*10)/(20+10)};        // Equivalent resistance
V=24;                             // Supply voltage
I=V/Req;                          // Supply current
R=20;                             // Resistance
R1=20+10;                         // Total Resistance   [ from Fig 8.3b ]
Il=I*{20/(20+10)};                // Current through inductor
io=Il;                            // Open-ckt current
disp(' Open-ckt current = '+string(io)+' Amp');

Vr=-io*R;                         // Voltage across 20 Ohms resistor
disp(' Voltage across 20 Ohms resistor = '+string(Vr)+' Volt');

         // Voltage across inductor is given by  i.e [ e=L*{io*(R/L)} ]
         // that is [ e= io*R ]

e=io*R1;                          // Voltage across inductor
disp(' Voltage across inductor = '+string(e)+' Volt');




             //  p 276           8.1
