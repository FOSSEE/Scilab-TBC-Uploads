// Example 5.2;//wavelength spacing and frequency spacing
clc;
clear;
close;
Br1=7.21*10^-10;//Bit rate
n=10^18;//hole concentration
Trg=((Br1*n)^-1)*10^9;//radiative minority carrier lifetime in GaAs in ns
Br2=1.79*10^-15;//Bit rate
Trs=((Br2*n)^-1)*10^3;//radiative minority carrier lifetime in Si in ms
disp(Trg,"radiative minority carrier lifetime in GaAs in ns")
disp(Trs,"radiative minority carrier lifetime in Si in ms")
