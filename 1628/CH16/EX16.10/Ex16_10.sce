
                // Examle 16.10

i1=4;                     // No load current
i2=6;                     // Full-load current
n=1500;                   // No.Of turns per poles
At1=i1*n;                 // Amper Turns per pole on No Load
disp(' Amper Turns per pole on No Load = '+string(At1)+' At');
 
At2=i2*n;                 // Amper Turns per pole on Full Load
disp(' Amper Turns per pole on Full Load = '+string(At2)+' At');

At=At2-At1;               // Amper Turns per pole of seires winding
disp(' Amper Turns per pole of seires winding = '+string(At)+' At');

Nse=At/100;               // Full Load Current
disp(' Full Load Current = '+string(Nse));





             //    p 647     16.10

