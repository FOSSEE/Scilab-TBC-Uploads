// Example no 5.2
// To find a)time delay width (deltat) b)maximum RF bandwidth
// Page no. 189

clc;
clear all;

// Given data
tN1=100*10^-6;                                                     // Excess delays for RF radio channels
tN2=4*10^-6;                                                       // Excess delays for microcellular channels
tN3=500*10^-9;                                                     // Excess delays for indoor channels
N=64;                                                              // Number of multipath bins

// a)To find time delay width (deltat)
deltat1=(tN1/N)*10^6;                                             // Time delay width for RF radio channels
deltat2=(tN2/N)*10^9;                                             // Time delay width for microcellular channels
deltat3=(tN3/N)*10^9;                                             // Time delay width for indoor channels

// Displaying the result in command window
printf('\n The time delay width for RF radio channels = %0.4f microsecond',deltat1);
printf('\n The time delay width for microcellular channels = %0.1f nanosecond',deltat2);
printf('\n The time delay width for indoor channels = %0.4f nanosecond',deltat3);

//b)To find maximum RF bandwidth
bandwidth1=(2/deltat1);                                          //Maximum RF bandwidth for RF radio channels in MHZ
bandwidth2=(2/deltat2)*10^3;                                     //Maximum RF bandwidth for microcellular channels in MHZ
bandwidth3=(2/deltat3)*10^3;                                     //Maximum RF bandwidth for indoor channels in MHZ

//Displaying the result in command window
printf('\n The maximum RF bandwidth for RF radio channels = %0.2f MHz',bandwidth1);
printf('\n The maximum RF bandwidth for microcellular channels = %0.0f MHz',bandwidth2);
printf('\n The maximum RF bandwidth for indoor channels = %0.0f MHz',bandwidth3);
