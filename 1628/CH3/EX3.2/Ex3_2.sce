

                             // Examle 3.2

w=0.2;                       // Energy stored
i=0.2;                       // Current
L1=(2*w)/i^2;                // The value of Inductor Using case-1
disp(' The value of Inductor Using case-1 = '+string(L1)+' H');

v=10;                        // Voltage
di1=0.1;                     // Increase current
dt1=0.2;                     // Time required 
L2=v/(di1/dt1);              // The value of Inductor Using case-2
disp(' The value of Inductor Using case-2 = '+string(L2)+' H');


p=2.5;                       // Power 
di2=0.1;                     // Increase current
dt2=0.5;                     // Time required 
L3=p/(di2*dt2);              // The value of Inductor Using case-3
disp(' The value of Inductor Using case-3 = '+string(L3)+' H');




              //  p 54     3.2