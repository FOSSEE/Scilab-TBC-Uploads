

                     // Example  9.12

T=20*10^-3;                  // Time period
A0_10=40*100*10^-3;          // Area between t= 0-10
A10_20=100*10*10^-3;         // Area between t= 10-20
A=A0_10+A10_20;              // Total Area of waveform
V=A/T;                       // Average value of waveform
disp(' Average value of waveform = '+string(V)+' Volt');

v=sqrt(V);                  // Rms value
disp(' Rms value of waveform = '+string(v)+' Volt');





         // p 230     9.12