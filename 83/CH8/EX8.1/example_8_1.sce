//Chapter 8
//Example 8.1
//page 300
//To determine the change in the frequency
clear;clc;
f=50;
H=5e3;
KE=H*100*1000; //K.E stored in the generator
PI=50e6; //power input to generator before the stem valve is closed
EE=PI*0.4 ; //Excess energy input to the rotating parts
fnew=f*((KE+EE)/KE)^0.5; //frequency at the end of the 0.4sec
printf('\nKinetic Energy stored in the rotating parts of generator and turbine = %d kW-sec',KE/1000);
printf('\nExcess power input to generator before the stem valve begins to close=%d MW',PI/1000000);
printf('\nExcess energy input to rotating parts in 0.4sec=%d kW-sec',EE/1000);
printf('\nFrequency at the end of 0.4sec=%0.2f Hz\n\n',fnew);



