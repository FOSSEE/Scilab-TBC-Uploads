// Example 9.6
// Determine (a) System kilowatts (b) System frequency (c) kilowatt loads
// carried by each machine
// Page 361

clc;
clear;
close;

// Given data
Pres=440;                    // Resistive load
PF=0.8;                      // Power factor
Pind=200;                    // Induction motor power
Palt=210;                    // Alternator bus load
deltaPa=70;                  // Change in load for machine A
f=60;                        // Frequency
deltaPb=70;                  // Change in load for machine B
deltaPc=70;                  // Change in load for machine C

// (a) System kilowatts 
deltaPbus=Pres+PF*Pind;     // Increase in bus load
Psys=Palt+deltaPbus;

// (b) System frequency
GDa=(60.2-f)/deltaPa;       // Governor droop for machine A
GDb=(60.4-f)/deltaPb;       // Governor droop for machine B
GDc=(60.6-f)/deltaPc;       // Governor droop for machine C
// From the figure 9.18(b)
deltaF=600/(350+175+116.6667) ;
f2=f-deltaF;

// (c) Kilowatt loads carried by each machine
Pa2=deltaPa+350*deltaF;
Pb2=deltaPb+175*deltaF;
Pc2=deltaPc+116.6667*deltaF;

// Display result on command window
printf("\n System kilowatts = %0.0f kW ",Psys);
printf("\n System frequency = %0.2f Hz",f2);
printf("\n Kilowatt loads carried by machine A = %0.1f kW",Pa2);
printf("\n Kilowatt loads carried by machine B = %0.1f kW",Pb2);
printf("\n Kilowatt loads carried by machine C = %0.1f kW",Pc2); 
