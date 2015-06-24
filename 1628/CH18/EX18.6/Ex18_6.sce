
                     // Examle 18.6

s=1000;                         // Sensitivity of Volt-meter A
r=50;                           // Load resistance
Vt=50;                          // Range of volt-meter
Ri1=s*r;                        // Internal resistance of Volt-meter A 
V1=150*{25000/(100000+25000)};  // Voltage in Ist Meter
disp('Voltage in Ist Meter (V) = '+string(V1)+' Volt');

s1=20000;                       // Sensitivity of Volt-meter B
Ri2=s1*r;                       // Internal resistance of Volt-meter B
V2=150*{47600/(100000+47600)};  // Voltage in 2nd Meter
disp('Voltage in 2nd Meter (V) = '+string(V2)+' Volt');

Er1=(Vt-V1)*100/Vt;             // % Error in Ist meter
disp('% Error in Ist meter = '+string(Er1)+' %');

Er2=(Vt-48.36)*100/Vt;           // % Error in 2nd meter ==> { V2=48.3739, but taking V2= 48.36 }
disp('% Error in 2nd meter = '+string(Er2)+' %');




          //  p 770         18.6