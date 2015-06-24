

              //  Example 8.3

R=10;                       // Resistance                                                  
L=14;                       // Inductor
t1=L/R;                     // Time

V=140;                      // Voltage
Io=V/R;                     // Steady State current
t2=0.4;                     // Time
i=Io*(1-exp (-t2/t1));      // Value of current at t= 0.4
disp(' Value of current at (t=0.4) = '+string(i)+' Amp');

              // ==> We have formula  it=Io*exp (-t/t1) .
it=8;                       // Current of 8 Amp 
t=-log(it/14)*t1;           // Time taken to rech at i=8 A 
disp('Time taken to rech at i=8 A = '+string(t)+' Second');




                //   p 279         8.3