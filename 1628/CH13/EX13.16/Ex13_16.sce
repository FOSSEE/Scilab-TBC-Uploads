
                // Example 13.16 
                
V1=200;               // Supply voltage                
Wo=120;               // Wattmeter reading                
Iw=Wo/V1;             // Core loss current
disp(' Core-loss current (Iw) = '+string(Iw)+' Amp');

Io=1.3;               // Open-ckt current
Im=sqrt(Io^2-Iw^2);   // Megnetising current
disp(' Megnetising current (Im) = '+string(Im)+' Amp');

Ro=V1/Iw;                 // Resistance
Xo=V1/1.15;               // Reactance
disp(' Equivalent resistance of exciting circuit = '+string(round(Ro))+' Ohms');
disp(' Equivalent reactance of low voltage winding = '+string(round(Xo))+' Ohms');

V2=400;                   // Supply voltage
k=V1/V2;                  // Transformation Ratio
kVA=12000;                // kVA rating
Ifl=kVA/V2;               // Full-load current
Wsc=200;                  // Short-ckt power
Re1=Wsc/Ifl^2;            // Equivalent resistance at full-load
Vsc=22;                   // Short-ckt voltage
Ze1=Vsc/Ifl;              // Equivalent impedeance at full-load
Xe1=sqrt(Ze1^2-Re1^2);    // Short-ckt reactance
Re2=k^2*Re1;              // Equivalent resistance of low voltage winding 
disp(' Equivalent resistance of low voltage winding = '+string(Re2)+' Ohms');

Xe2=k^2*Xe1;              // Equivalent ractance of low voltage winding
disp(' Equivalent reactance of low voltage winding = '+string(Xe2)+' Ohms');


                 //   p 516           13.16

