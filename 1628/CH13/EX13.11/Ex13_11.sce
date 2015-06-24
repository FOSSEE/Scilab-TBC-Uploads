
                // Example 13.11

R1=10;                         // Resistance of 10 Ohms    
R2=0.02;                       // Resistance of 0.02 Ohms
Xe=35                          // Reactance of primary coil
n1=250;                        // No.Of turns in Primary coil
n2=6600;                       // No.Of turns in 2ry coil
k=n1/n2;                       // Turns ratio
P=40000;                       // Single-Phase power
I2=P/n1;                       // Full-load current
Re2=k^2*R1+R2;                 // Resistance Re2
Xe2=k^2*Xe;                    // Reactance Xe2
SinQ=0;                        // SinQ=0
CosQ=1;                        // Power factor
Reg={(I2*Re2*CosQ)+(I2*Xe2*SinQ)}/n1;            // % Regulation.
disp(' % Regulation (pf=1) = '+string(Reg*100)+' %');

CosQ1=0.8;                     // Leading Power factor
SinQ1=sqrt(1-CosQ1^2);         // SinQ=0.6 +ve

Reg1={(I2*Re2*CosQ1)+(I2*Xe2*SinQ1)}/n1;         // % Regulation.
disp(' % Regulation (pf=0.8) = '+string(Reg1*100)+' %');

SinQ2=-sqrt(1-CosQ1^2);        // SinQ=0.6 -ve

Reg2={(I2*0.0343*CosQ1)+(I2*Xe2*SinQ2)}/n1;        // % Regulation.
disp(' % Regulation for (pf=0.8) = '+string(Reg2*100)+' %');



           //  p 506                 13.11





