
            // Example 13.12

           // We know that E=4.44*f*N*Qm
           
Qm=0.06;                      // Megnetic flux           
f=50;                         // Frequency           
E2=250;                       // Voltage           
N2=E2/(4.44*f*Qm);            // No.Of of turns in 2ry coil
disp(' No.Of turns (N2) = '+string(round(N2))+' turns');

E1=5000;                      // Voltage
N1=(E1/E2)*19;                // No.Of turns in 1ry coil
disp(' No.Of turns (N1) = '+string(N1)+' turns');

kVA=150*10^3;                      // kVA Rating
pf=1;                         // Power factor
Po=0.5*kVA*pf;                // O/p power
Cfl=1800;                     // Full-load Copper losses
Pc=0.5*0.5*Cfl;               // Copper losses
Pi=1500;                      // Iron losses
n=Po/(Po+Pc+Pi);              // Efficiency
disp(' Efficiency at half kVA = '+string(n*100)+' %');

pf1=0.8;                      // Power factor
Po1=kVA*pf1;                  // O/p power
Pc1=1800;                     // Copper losses
n1=Po1/(Po1+Pc1+Pi);           // Efficiency
disp(' Efficiency at Full-load & at(pf=0.8) = '+string(n1*100)+' %');

            // We know that x^2 x 1800= 1500
x=sqrt(1500/1800);            // Value of x
kVA1=kVA*x;                   // kVA Load for Maximum efficiency
disp(' kVA Load for Maximum efficiency = '+string(round(kVA1/1000))+' kVA');


            // p 509                 13.12


              



