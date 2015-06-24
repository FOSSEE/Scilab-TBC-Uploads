

                     // Example  9.14


T=5*10^-3;               // Time period
Vm=10;                   // Peak Value

Vav=Vm/2;                // Average Value
disp(' Average value of waveform = '+string(Vav)+' Volt');

Vrms=Vm/sqrt(3);         // Rms value of Saw-tooth waveform
disp(' Rms value of waveform = '+string(Vrms)+' Volt');

F=Vrms/Vav;              // Form Factor
disp(' Form Factor of waveform = '+string(F));

Pf=Vm/Vrms;              // Peak Factor
disp(' Peak Factor of waveform = '+string(Pf));




       //  p 321    9.14



