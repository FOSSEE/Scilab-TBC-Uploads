
              //  Example 8.8

         // From the diagram 8.15
         
R1=1000;                         // Resistance of 1 kilo-Ohms    
R2=10000;                        // Resistance of 10 kilo-Ohms
R3=1000;                         // Resistance of 1 kilo-Ohms         
Rth=[(R1+R2)*R3]/(R1+R2+R3);     // Equivalent resistance
C=10*10^-6;                      // capacitor
t=Rth*C;                         // Time constant
V=30;                            // Source voltage
Vc=V*(R1/(R1+R2));               // Voltage across the capacitor

           // Apply KVL to outer loop
           // we get 30-Io*R1-15= 0
Io=15/R1;                        // Current in the outer loop
Iin=V/(R1+R2+R3);                // Open=ckt current

           // We know that  ==> it=Iin+[Io-Iin]*e(-t1/t)
t1=0.001;                        // Assume t1=1 mS
it=Iin+[Io-Iin]*exp(-t1/t);      // Current i(t)
disp(' Current i(t) is = '+string(it)+' Amp   oR  i(t)= 2.5+(15-2.5)*e(-t/9.17ms) mA');




                     // p 287             8.8
