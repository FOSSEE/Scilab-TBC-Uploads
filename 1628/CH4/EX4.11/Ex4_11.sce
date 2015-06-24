
                             // Examle 4.11

               // From the diagram (4.14)
 
Req=2+{(12*4)/(12+4)}+4;            // Equivalent resistance (for 4.14a )
v=36;                               // Voltage source
i=v/Req;                            // Current supply by the voltage source
I=i*(12/(12+4));                    // Current in branch B  ==> { by current divider }
disp(' Current in branch B = '+string(I)+' Amp');

Req1=3+{(12*6)/(12+6)}+1;           // Equivalent resistance (for 4.14b )
i1=v/Req1;                          // Current supply by the voltage source
I1=i1*(12/(12+6));                  // Current in branch A  ==> { by current divider }
disp(' Current in branch A = '+string(I1)+' Amp');

Rtr=v/I;                           // Transfer resistance
disp(' Transfer resistance from Branch A to B = '+string(Rtr)+' Ohm');



                      // p 117         4.11

