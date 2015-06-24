//Tested on Windows 7 Ultimate 32-bit
//Chapter 12 Modulation and Demodulation Pg no. 380
clear;
clc;

//Given

fc=9D6;//frequency of carrier wave in hertz
Vc=9;//peak value of carrier wave in volts
fm=10D3;//frequency of modulating wave in hertz
Vm=4.5;//amplitude of modulating sine wave in volts

//Solution

m=Vm/Vc;//modulation index
printf("Modulation index m = %d %%",m*100);
fu=fc+fm;//upper side band frequency in hertz
fl=fc-fm;//lower side band frequency in hertz
f=[fc-2*fm fc-fm fc fc+fm fc+2*fm];//frequency range
for i=1:5
    if f(i)==fu | f(i)==fl then
        A(i)=m*Vc/2;//amplitude of side frequency in volts
    else
        A(i)=0;//amplitude of side frequency in volts
    end
end

bar(f/10^6,A,0.1,'red');
title("Frequency spectrum of AM wave");
xlabel("Frequency in MHz");
ylabel("Amplitude in volts");
xstring(8.988,2.3,"lower side band");
xstring(9.008,2.3,"upper side band");
