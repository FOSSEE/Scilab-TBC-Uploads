
                     // Example  9.2

                         // Given v=0.04 sin(2000t+60)V

w=2000;                  // Angular Velocity
disp(' The Angular Velocity is = '+string(w)+' rad/s');

f=w/(2*%pi);             // frequency
disp(' Frequency is = '+string(f)+' Hz');

v=0.04*sind(2000*160*10^-6*(180/%pi)+60);      // Voltage at (t=160 us)
disp(' Voltage at (t=160 us) = '+string(v*1000)+' mV');

T=1/f;                   // Time Period
t=(60/360)*T;            // Time represent y 60 phase Angle
disp(' Time represent y 60 phase Angle = '+string(t*1000)+' mS');






           // p 305    9.2
