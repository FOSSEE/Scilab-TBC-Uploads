
                             // Examle 4.8

Voc=12.6;                 // Voltage of car battery 
Isc=300;                  // Short-circuit current 
Ro=Voc/Isc;               // O/p resistance 

                          // { P=Vht^2/4Rth } , but here Vth= Voc & Rth= Ro 
Pavl=Voc^2/(4*Ro);        // Available power
disp(' Available power is = '+string(Pavl)+ ' Watt');




 
                 //  p 114            4.8