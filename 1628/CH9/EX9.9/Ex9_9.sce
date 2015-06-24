
                     // Example  9.9

I1=3.535+%i*0;               // Rectangular form RMS of I1  i.e I1= 5/1.14<0 
I2=3.061+%i*1.768;           // Rectangular form RMS of I2  i.e I2= 5/1.14<30
I3=-1.768-%i*3.061;          // Rectangular form RMS of I3  i.e I3= 5/1.14<-120
I=I1+I2+I3;                  // Resultant of Current
disp(' Resultant Rms Value of Cuttent = '+string(I)+' Amp   OR  ('+string(abs(I))+' <'+string(atand(imag(I),real(I)))+' Amp )');





        // p 318    9.9        


