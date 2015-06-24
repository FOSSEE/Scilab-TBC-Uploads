

                     // Example  9.11

T=8*10^-3;                 // Time period
A01=10*10^-3;              // Area between t= 0-1
A13=-5*2*10^-3;            // Area between t= 1-3
A34=20*10^-3;              // Area between t= 3-4
A45=0*10^-3;               // Area between t= 4-5
A58=5*3*10^-3;             // Area between t= 5-8
A=A01+A13+A34+A45+A58;     // Total Area of waveform
V=A/T;                     // Average value of waveform
disp(' Average value of waveform = '+string(V)+' Volt');






         // p 230     9.11