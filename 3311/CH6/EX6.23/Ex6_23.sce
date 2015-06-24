// chapter 6
// example 6.23
// Plot average voltage and load voltage
// page-356-357
clear;
clc;
clf;
// given
Es=415; // in V (voltage supply)
f=50; // supply frequency
alpha=[0:30:120]; // in degree
// calculate
Em=Es*sqrt(2/3); // calculation of peak voltage
// plot
alpha=[0:5:60];
Edc1=(3*sqrt(3)*Em/%pi)*cosd(alpha);
plot2d(alpha,Edc1);
alpha=[60:5:120];
Edc2=(3*sqrt(3)*Em/%pi)*(1+cosd(alpha+60));
plot2d(alpha,Edc2);
xlabel("alpha (degrees)");
ylabel("Edc (avg)  (in V)");
title("Average output voltage with alpha");
// since 3-phase waveform can not be plotted, so i have only plotted the average voltage