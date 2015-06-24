
               // Example 16.17
               
Ra=0.2;               // Resistance                              
V=250;                // Supply voltage               
Eb=0;                 // Voltage at rest
Ia=(V-Eb)/Ra;         // Current drawn by the machine at Eb=200
disp(' Current drawn by the machine at (Eb=0) = '+string(Ia)+' Amp'); 

Eb1=200;              // Voltage at Eb=200
Ia1=(V-Eb1)/Ra;       // Current drawn by the machine at Eb=200
disp(' Current drawn by the machine at (Eb=200) = '+string(Ia1)+' Amp'); 

Eb2=250;              // Voltage at Eb=250
Ia2=(V-Eb2)/Ra;       // Current drawn by the machine at Eb=250
disp(' Current drawn by the machine at (Eb=250) = '+string(Ia2)+' Amp'); 

Eb3=-250;              // Voltage at Eb=-250
Ia3=(V-Eb3)/Ra;        // Current drawn by the machine at Eb=-250
disp(' Current drawn by the machine at (Eb=-250) = '+string(Ia3)+' Amp'); 





                    //  p 653           16.17