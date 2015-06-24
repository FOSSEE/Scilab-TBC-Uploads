//Example 6.2
//Program to Plot the Static Plate Characteristics and Determine //Plate AC Resistance, Mutual Conductance & Amplification Factor
clear;
clc ;
close ;
//Given Circuit Data
//All Values Extrapolated to Touch x-axis
V0=[20 50 100 150]; //V
V1=[70 100 150 200]; //V
V2=[112 150 200]; //V
V3=[177 200 250]; //V
V4=[235 250 300]; //V
I0=[0 3.5 11.2 20]; //mA
I1=[0 4 12.4 21.5]; //mA
I2=[0 5.4 14.1]; //mA
I3=[0 3.4 12.4]; //mA
I4=[0 2.5 11.3]; //mA
//Plotting
plot(V0,I0);
plot(V1,I1);
plot(V2,I2);
plot(V3,I3);
plot(V4,I4);
a= gca ();
xlabel ('Plate Voltage (in V)');
ylabel ('Plate Current (in mA)');
title ('STATIC PLATE CHARACTERISTIC CURVE OF THE TRIODE');
//Calculation
//Values from Characteristic Plot
dip=(14.0-10.7)*10^(-3);//A
dvp=20;//V
rp=dvp/dip;
diP=(12.4-5.3)*10^(-3);//A
dvG=1;//V
gm=diP/dvG;
u=gm*rp;
ut=(192-150)/1;
//Displaying The Results in Command Window
printf("\n\t The Plate AC Resistance is rp= %f kOhms .",rp/10^(3));
printf("\n\t The Mutual Conductance is gm= %f mS .",gm/10^(-3));
printf("\n\t The Graphical Amplification Factor is u= %f .",u);
printf("\n\t The Theoretical Amplification Factor is ut= %f .",ut);