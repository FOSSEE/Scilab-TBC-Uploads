

                      // Example  5.8


B=0.5;                      // Megnetic Field 
l1=0.03;                    // Length of conductor
v=0.01;                     // velocity in m/s
e1=B*l1*v;                  // Formula of emf 
disp('(a) The induced emf is = '+string(e1)+' Volt');
l2=0.1;                     // Length
t1=l2/v;
disp(' Time for which the induced Voltage lasts is = '+string(t1)+' Second');

e2=B*l2*v;                  // Formula of emf 
disp(' (b) The induced emf is = '+string(e2)+' Volt');
t2=l1/v;
disp(' Time for which the induced Voltage lasts is = '+string(t2)+' Second');
disp(' (c) Because of the gap, No Current can flow. there for no force Required to Pull the coil.');
R=0.001;
F1=(B*B*l1*l1*v)/R;        // Formula of Force 
disp(' (d.1) Force Required to pull the loop 1 = '+string(F1)+' N');
F2=(B*B*l2*l2*v)/R;        // Formula of Force 
disp(' (d.2) Force Required to pull the loop 1 = '+string(F2)+' N');


         //      p 199      5.8
