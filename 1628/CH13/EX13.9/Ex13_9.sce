
                       // Example  13.9
 
pf1=0.2;               // Power factor at 5 A
pf2=0.8;               // Power factor at 120 A
Q1=acosd(pf1);         // Angle for 0.2 Power factor 
Q2=acosd(pf2);         // Angle for 0.8 Power factor 
V2=110;                // Voltage in Secondary winding
V1=440;                // Voltage in Primary winding
k=V2/V1;               // Ratio Constant
I2=120;                // Current in Secondary winding
i1=k*I2;               // Current in primary winding
io=5;                  // No load Current
I1=23.99-%i*18;        // Current in primary winding in complex form
Io=1-%i*4.899;         // No load Current in complex form

I=I1+Io;               // Primary Current
disp(' Primary Current = '+string(I)+' Amp  or  '+string(abs(I))+'<'+string(atand(imag(I),real(I)))+' Amp');

pf=cosd(-42.49);       // Primary Power factor
disp(' Primary Power factor = '+string(pf));




         /// p 498      13.9
