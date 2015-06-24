

                             // Examle 4.2

               // Reffer the diagram (4.3)
               // Using Superpositon theorem

V=10;                         // Voltage source
I1=(V/(50+150));              // When 10-V voltage source is on { by ohm's law }

i1=40;                        // Source current
I2=i1*(150/(50+150));         // When 40-A Current source is on { by current divider }

i2=-120;                      // Source current
I3=i2*(50/(50+150));          // When (-120)-A Current source is on { by current divider }


I=I1+I2+I3;                   // Current in the circuit  { by Superpositon theorem }
disp(' Current in the circuit = '+string(I)+' Amp');





           //   p 106          4.2









