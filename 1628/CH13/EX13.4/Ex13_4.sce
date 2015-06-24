
                   // Example  13.4'

                     // From the circuit Diagram Ip= 30<0/{20+i20+2^2*(2-i10)}

Ip= 30/{20+%i*20+2^2*(2-%i*10)};   // Phase Current

Il=2*Ip;                           // Load current
disp(' The Load current is Il = '+string(Il)+' Amp  or  ('+string(abs(Il))+' <'+string(atand(imag(Il),real(Il)))+' Amp )');







         // p 491     13.4 
