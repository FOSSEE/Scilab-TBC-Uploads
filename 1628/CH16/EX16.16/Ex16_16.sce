
             // Example 16.16

V=230;                // Supply voltage
Ia=110;               // Current
Ra=0.12;              // Resistance
Rse=0.03;             // Series field resistance
E1=V-Ia*(Ra+Rse);     // Emf Generated

            // But for the Given machine  ( E1= QZNP/60A= kQ1N1 )
            
N1=600;               // No.Of turns                         
Q1=0.024;             // Megnetic flux            
k=E1/(Q1*N1);         // Constant

Ia1=50;               // Current of 50A 
E2=V-[Ia1*(Ra+Rse)];  // Emf Generated

            // We know that E2=k*Q2*N2
            
Q2=0.016;             // Megnetic flux                        
N2=E2/(k*Q2);         // New speed 
disp(' The new speed is = '+string(round(N2))+' rpm');




              //  p 653        16.16
