
                       // Example  13.14


kVA=12000;             // Single Phase supply
V1=120;                // Voltage in primary winding
I2=kVA/V1;             // Currnet in Secondary winding
I1=I2;                 // Current in primary winding
V2=240;                // Voltage in Secondary winding
Pi=V2*I2;              // I/p apparent power 
disp(' I/p apparent power = '+string(Pi/1000)+' kVA');

Po=V1*I1*2;            // O/p apparent power
disp(' O/p apparent power = '+string(Po/1000)+' kVA');





          //    p 511      13.14
