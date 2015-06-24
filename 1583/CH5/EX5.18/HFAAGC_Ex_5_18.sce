clc
//Chapter 5:High Frequency Amplifiers and Automatic Gain Control
//example 5.18
//given
Vr=1//reference voltage
Vc=0.5
Vo=Vr-Vc//output voltage
Vi=Vo/Vc^2//input voltage
mprintf('the dc voltage as function of input voltage is %d V',Vi)
