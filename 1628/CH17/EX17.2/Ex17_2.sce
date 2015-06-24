
                     // Examle 17.2


zm=(5+%i*12);            // Impedence of main-Winding
za=(12+%i*5);            // Impedence of starting-Winding
V=230+%i*0;              // Supply voltage
Im=V/zm;                 // Current in main-Winding
disp(' The Current in main-Winding = '+string(Im)+' Amp  or  ('+string(abs(Im))+' <'+string(atand(imag(Im),real(Im)))+' Amp )');

Ia=V/za;                 // Current in starting-Winding
disp(' The Current in starting-Winding = '+string(Ia)+' Amp  or  ('+string(abs(Ia))+' <'+string(atand(imag(Ia),real(Ia)))+' Amp )');

Il=Im+Ia;                // The line Current
disp(' The line Current = '+string(Il)+' Amp  or  ('+string(abs(Il))+' <'+string(atand(imag(Il),real(Il)))+' Amp )');

Qa=-22.62;               // Phase angle of starting-winding
Qm=-67.38;               // Phase angle of main-winding
Q=Qa-Qm;                 // The phase displacement (Q)
disp(' The phase displacement (Q) = '+string(Q)+'  i.e = '+string(round(Q))+' Digree');

pf=cosd(round(Q));       // The Power factor
disp(' The Power factor is = '+string(pf)+' lagging');



               // p 683        17.2 