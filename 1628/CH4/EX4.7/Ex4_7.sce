
                             // Examle 4.7

               // From the diagram (4.11a)

                           // Using Nortan's equivalent theorem

R1=5;                      // Resistance R1
R2=10;                     // Resistance R2
V1=10;                     // Voltage source V1
I1=V1/R1;                  // Current I1

V2=5;                      // Voltage source V2
I2=V2/R2;                  // Current I2
IN=I1+I2;                  // Nortan's current

RN=(R1*R2)/(R1+R2);        // Nortan's resistance

Rl=5;                      // Load resistance
Il=IN*(RN/(RN+Rl));        // Load current
disp(' Load current (Il)  = '+string(Il)+' Amp');



        // p 113            4.7
