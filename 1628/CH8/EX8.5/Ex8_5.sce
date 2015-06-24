
             //  Example 8.5

      // From the diagram 4.6

V=20;                       // Source Voltage
Io=V/(25+5);                // Current iL(0-)
disp('Current iL(0-) is = '+string(Io)+' Amp');

R1=30;                      // Resistance of 30 Ohms
i2=V/R1;                    // Current i2(0-)
disp('Current i2(0-) is = '+string(i2)+' Amp');

        // Because current in inducor can't charge instantaneously.
disp('Current iL(0+) is = '+string(i2)+' Amp');

R12=60;                      // Resistance of 60 Ohms
R3=30;                       // Resistance of 30 Ohms
R45=30;                      // Resistance of 30 Ohms
Req=R45+[(R12*R3)/(R12+R3)]; // Equivalent Resistance
L=2;                         // Inductor 
t=L/Req;                     // Time constant
t1=0.02;                     // Current of 20 mA      
I1=0.667*exp(-t1/t);            // Inductor current ( iL(t)= Io*e-t1/t )
disp('Inductor current iL(t) is = '+string(I1)+' Amp');

         // ==> [ By using Current divider ]
I2=-I1*(R12/(R12+R3));       // Inductor current at( t=20 mA)
disp('Inductor current at( t=20 mA) is = '+string(I2)+' Amp');       


              //  p 280           8.5  
         
         
         
                  