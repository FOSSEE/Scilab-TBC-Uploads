

                             // Examle 3.13

                          // From Diagram (3.26) Apply KVL to get 24-4I-2I+18I= 0
I=(-24/12);               // Current
disp(' The value of Current = '+string(I)+' Amp');

V1=4*I;                  // Voltage across 4 Ohm Resistor 
p=-(4.5*V1*I);           // Power absorbed
disp(' Power absorbed by dependent source = '+string(p)+' Watt');

V=24;                    // Independent voltage source
R=V/I;                   // Resistence Seen from Independent source
disp(' Resistence Seen from Independent source = '+string(R)+' Ohm');




                 //        p 67    3.13


