

                     // Example  9.4
 
f=60;               // Frequency 
w=2*%pi*f;          // Angular Frequency
disp(' Angular Frequency is = '+string(w)+' rad/s');

disp(' instantaneous value of Voltage  is i= 12 sin(377t)A');

i= 12*sind(377*(1/360)*(180/%pi));   // Formula of Current
disp(' The Value ofCurrent After (t=1/360 s) = '+string(i)+' Amp');

i1=9.6;                              // Current
t={asind(i1/12)*%pi}/(377*180);      // formula of Time Derived from Current Eq
disp(' Time Required to Rech at (t=9.6) = '+string(t*1000)+' mS');




       // p306       9.4








