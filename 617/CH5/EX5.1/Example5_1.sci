clc();
clear;

// to calculate the maximum temperature inside the coil when current was 2.5 amp
// the ratio of radii 12/13.5 is so great that the curvature may be neglected

Di= 10/12;                                      // inside diameter of the coil in ft
x=7/48;                                         // thickness of coil in ft
ts=70.5;                                        // Initial temp. of coil in degF
Rm=12.1;                                        // Resistance of coil 
e=0.0024;                                       // Temperature coefficient of coil in degF
i=0.009;                                        // Initial current in amp
V=0.1;                                          // Initial Voltage in volts
Rs=V/i;                                         // Initial resistance in ohms
Thm=(Rm/Rs-1)/e;                                // Mean temperature in degF
Th0=1.5*Thm;                                    // Increase in temperature in degF
to=ts+Th0;                                      // Maximum temperature in degF
printf("The maximum temperature of the coil was %.1f degF",to);

