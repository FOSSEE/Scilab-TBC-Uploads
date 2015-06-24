

                       // Example  13.7

VA=350;                // VA rating 
V1=230;                // I/p Voltage
Io=VA/V1;              // I/p Current
Pi=110;                // I/p power
                       // Core Loss = I/p power at no load
                       // Pi= V1*Io*CosQ
pf=Pi/VA;              // Power factor
disp(' Power factor at no laod = '+string(pf));

Iw=Io*pf;              // Loss component of no-load Current
disp(' Loss component of no-load Current = '+string(Iw)+' Amp');

Im=sqrt(Io^2-Iw^2);    // Magnetising component of no-load Current
disp(' Magnetising component of no-load Current = '+string(Im)+' Amp');



                  //   p 493       13.7
