
                             // Examle 3.8

                            // for the extreme value of Rl voltage (Vl) & Current (Il)
E=3;                        // Supply voltage
Ri=1;                       // I/p Resistance
Rl1=100;                    // Minimum load resistance 
Il1=E/(Rl1+Ri);             // Current at minimum load Rl1
Vl1=E-(Il1*Ri);             // Voltage at minimum load Rl1

Rl2=1000;                   // Maximum load resistance 
Il2=E/(Rl2+Ri);             // Current at maximum load Rl2
Vl2=E-(Il2*Ri);             // Voltage at maximum load Rl2

Il={(Il1-Il2)/Il1}*100;     // Change in current Il
disp(' The % chenge (a Decrease ) in Il = '+string(Il)+' % ');
 
Vl={(Vl1-Vl2)/Vl1}*100;    // Change in voltage Vl
disp(' The % chenge (a Increase ) in Vl = '+string(-Vl)+' % ');

rl1=0.001;                    // Minimum load resistance (for 2nd case)
il1=E/(rl1+Ri);               // Current at minimum load rl1
vl1=E-(il1*Ri);               // Voltage at minimum load rl1

rl2=0.01;                     // Maximum load resistance (for 2nd case)
il2=E/(rl2+Ri);               // Current at maximum load rl2
vl2=E-(il2*Ri);               // Voltage at maximum load rl2

il={(il1-il2)/il1}*100;       // Change in current il
disp(' The % chenge (a Decrease ) in Il = '+string(il)+' % ');
 
vl={(0.003-0.03)/0.003}*100;  // Change in voltage vl   ==> (vl1=0.003 & vl2=0.03)
disp(' The % chenge (a Increase ) in Vl = '+string(-vl)+' % ');





           //    p 59        3.8

