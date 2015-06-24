
                    // Example  12.1

                      // Given Z= 32+i24
R=32;                 // Real Part of Z
X=24;                 // Imaginary Part of Z
z=R+%i*X;             // Impedance 
Z=abs(z);             // Absolute value of Z 
Vl=400;               // Supply Voltage
Vph1=Vl/1.732;        // Voltage in Y-Connection
Iph1=Vph1/Z;          // Current in Y-Connection
Il1=Iph1;             // Load Current in Y-Connection
disp(' Current Drawn ( for Y-Connection ) = '+string(Il1)+' Amp');
Vph2=Vl;              // Voltage in Delta-Connection
Iph2=Vph2/Z;          // Current in Delta-Connection
Il2=1.732*Iph2;       // Load Current in Delta-Connection
disp(' Current Drawn (for Delta-Connection ) = '+string(Il2)+' Amp'); 




      //  p 409       12.1

