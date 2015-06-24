//chapter-9 page 411 example 9.3
//==============================================================================
clc;
clear;

fs=2*10^9;//Signal Frequency in Hz
fp=12*10^9//Pump Frequency in Hz
Ri=16;//O/P resistance of signal generator in ohms
Rs=1000;//On types resistance of signal generator in ohms

//CALCULATION
P=10*log10((fp-fs)/fs);//Power gain in dB
Pusb=10*log10((fp+fs)/fs);//Power gain as USB converter in dB

//OUTPUT
mprintf('\nPower gain is P=%1.2f dB \nPower gain as USB converter is Pusb=%1.2f dB',P,Pusb);

//=========================END OF PROGRAM===============================


//Note: Answer given in textbook is wrong Check it once..
//Correct answers are Power gain is P=6.99 dB 
//                    Power gain as USB converter is Pusb=8.45 dB 
