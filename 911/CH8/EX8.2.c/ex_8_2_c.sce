//example 8.2(b)//
//to find frequency of output waveform//
clc
//clears the screen//
clear
//clears the variables//
f=10*1000;
//frequency of trigger waveform in Hertz//
t=100*(10^-6);
//time period b/w two successive leading or trailing edges in microseconds//
r=10*1000;
//resistance in Ohms//
C=.01*(10^-6);
//capacitance in microfarads//
ep=1.1*r*C;
disp('the trigger waveform is a symmetrical one; it has HIGH and LOW time periods of 50microsec each. Since the LOW state time period of trigger waveform is less than the expected output pulse width, it can succesfully trigger the monoshot on its trailing edges')
disp(ep,'expected pulse width=')
disp('since the time period between two successive trailing edges is 100 microsec and the expected output pulse width is 110 microsec, therefore only alternate trsiling edges of trigger waveform will trigger the monoshot')
f0=f/2;
disp(f0,'output frequency')
t=1/f0;
disp(t,'time period of output waveform=')
dc=ep/t;
disp(dc,'duty cycle of output waveform=')