
                             // Examle 4.9

n=8;                       // No.Of dry cells
E=1.5;                     // Emf of cell
Voc=n*E;                   // open-circuit Voltage of battery 
r=0.75;                    // Internal resistance
Ro=r*n;                    // O/p resistance 

              // ==> { P=Vht^2/4Rth } , but here Vth= Voc & Rth= Ro 

Pavl=Voc^2/(4*Ro);         // Available power
disp(' Available power is = '+string(Pavl)+ ' Watt');




 
                 //  p 115            4.9






