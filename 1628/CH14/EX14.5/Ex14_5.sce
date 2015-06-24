

                    // Example  14.5
 
I=100;                         // Full-rated short-circuit current
V=3.3*10^3/sqrt(3);            // Three phase voltage
R=0.9;                         // Remature resistance
Zs=5.196;                      // Impedance
Vz=I*Zs;                       // Voltage drop per phase on full load 
Q=acosd(R/Zs);                 // Phase angle 
pf1=0.8;                       // Lagging power factor
q1=acosd(pf1);                 // Lagging angle
alfa1=Q-q1;                    // Resultant angle
Cos1=cosd(alfa1);              // power factor for Resultant
E1=(sqrt(V*V+Vz*Vz+2*V*Vz*Cos1));
Er1=(E1-V)/V;                  // the Voltage Regulation (0.8 Lagging)
disp('(a) the Voltage Regulation (0.8 Lagging) is = '+string(Er1*100)+' per Cent');
alfa3=Q+q1;                    // Resultant angle
Cos3=cosd(alfa3);              // power factor for Resultant
E3=(sqrt(V*V+Vz*Vz+2*V*Vz*Cos3));
Er3=(E3-V)/V;                  // the Voltage Regulation (0.8 Leading)
disp('(b) the Voltage Regulation (0.8 Leading) is = '+string(Er3*100)+' per Cent');




             //  p 563          14.5  
