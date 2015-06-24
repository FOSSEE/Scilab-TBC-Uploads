
            //  Example 11.1

L=0.15;                    // Inductor
C=100*10^-6;               // Capacitor
fo=1/{2*%pi*sqrt(L*C)};    // Resonance frequency
disp(' Resonance frequency (fo) = '+string(fo)+' Hz');

R=12;                      // Circuit resistance
V=100;                     // Source voltage 
Io=V/R;                    // Maximum current by source
disp(' Maximum current by source = '+string(Io)+' Amp');

r1=R^2/(2*L^2);               // for easy calculation
r2=(1/(L*C));                 // for easy calculation
fc=(1/6.28)*sqrt(r2-r1);      // Frequency for maximum capacitor voltage
disp(' Frequency for maximum capacitor voltage = '+string(fc)+' Hz');


r3=(R^2*C^2)/2;                // for easy calculation
fl=1/{2*%pi*sqrt((L*C)-r3)};   // Frequency for maximum capacitor voltage
disp(' Frequency for maximum capacitor voltage = '+string(fo)+' Hz');

Xl=2*%pi*fo*L;                 // Inductive reactance
disp(' Inductive reactance = '+string(Xl)+' Ohms');

Xc=1/(2*%pi*fo*C);            // Inductive reactance
disp(' Capacitive reactance = '+string(Xc)+' Ohms');

Q=Xl/R;                       // Quality factor
disp(' Quality factor = '+string(Q));

VLC=Q*V;                      // Voltage drop across the elements
disp(' Voltage drop across the elements = '+string(VLC)+' Volt');



                   // p 378           11.1








