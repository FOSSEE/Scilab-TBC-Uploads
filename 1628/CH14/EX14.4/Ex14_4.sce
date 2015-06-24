

                    // Example  14.4`

I=15.7;                      // Phase current
Vt=22*10^3/sqrt(3);          // Phase voltage
Zs=0.16;                     // Impedance
V=12.7;                      // Terminal Voltage per phase on full load 
Vz=I*Zs;                     // Voltage drop per phase on full load 
OC=0.014;                    // Star winding resistence
OG=0.16;                     // Synchronous impedance
Q=acosd(OC/OG);              // Phase angle
pf1=0.8;                     // Lagging power factor
q1=acosd(pf1);               // Lagging angle
alfa1=Q-q1;                  // Resultant angle
Cos1=cosd(alfa1);            // power factor for Resultant
E1=(sqrt(V*V+Vz*Vz+2*V*Vz*Cos1));
Er1=(E1-V)/V;                   // the Voltage Regulation (0.8 Lagging)
disp('(a) the Voltage Regulation (0.8 Lagging) is = '+string(Er1*100)+' per Cent');

pf2=1;                       // Leading power factor
q2=acosd(pf2);               // Leading angle
alfa2=Q-q2;                  // Resultant angle
Cos2=cosd(alfa2);            // power factor for Resultant
E2=(sqrt(V*V+Vz*Vz+2*V*Vz*Cos2));
Er2=(E2-V)/V;                // the Voltage Regulation (1 Lagging)
disp('(b) the Voltage Regulation (1 Lagging) is = '+string(Er2*100)+' per Cent');

alfa3=Q+q1;                  // Resultant angle
Cos3=cosd(alfa3);            // power factor for Resultant
E3=(sqrt(V*V+Vz*Vz+2*V*Vz*Cos3));
Er3=(E3-V)/V;                // the Voltage Regulation (0.8 Leading)
disp('(c) the Voltage Regulation (0.8 Leading) is = '+string(Er3*100)+' per Cent');

            //  p 560       14.4  
