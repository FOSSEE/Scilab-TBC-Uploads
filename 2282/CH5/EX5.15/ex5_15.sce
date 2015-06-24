//Example 5.15, page no-208
clear
clc

f1=2.4        //first signal frequency
f2=3.2        //2nd signal frequency
f3=3.4        //3rd signal frequency

//minimum sampling rate for each of the signals would be twice the highest frequency component


sr=3*(f3*2)
st=10^6/(sr*10^3)
printf("Sampling rate of the composite signal = %.1f kHz \n Sampling interval of the composite signal = %.0f micro second",sr,st)
