


                             // Examle 3.14

                          // From Diagram (3.28) Apply KVL to get 100-40I-60I= 0
I=100/100;                // Current
disp(' The value of Current = '+string(I)+' Amp');

R=60;                     // Resistor
V1=I*R;                   // Voltage across 60 ohm resistor
disp(' Voltage across 60 ohm resistor = '+string(V1)+' Volt');

                          // By using Voltage divider concept
Vab=-10+V1+0*10+30;       // Voltage Vab
disp(' Voltage across open-circuit Vab = '+string(Vab)+' Volt');



              //    p 68           3.14


