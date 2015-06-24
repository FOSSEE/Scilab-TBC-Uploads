
                     // Example  9.13

T=3;                 // Time period
A1=10;               //Current under Area between t= 0-2
A2=0;                //Current under Area between t= 2-3

Irms=sqrt((A1*A1*2+A2*A2)/3);        // Rms value
disp(' Rms value of waveform = '+string(Irms)+' Amp');

Iav=(A1*2+A2*1)/3;                  // Average Value
disp(' Average value of waveform = '+string(Iav)+' Amp');

F=Irms/Iav;                         // Form Factor
disp(' Form Factor of waveform = '+string(F));



         // p 321     9.13





