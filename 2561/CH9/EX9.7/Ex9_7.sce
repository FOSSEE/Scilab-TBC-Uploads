//Ex9_7
clc
IIL=-1.6*10^(-3)
disp("IIL= "+string(IIL)+" A") //  Input sink Current of TTL driver
IIH=40*10^(-6)
disp("IIH= "+string(IIH)+" A") //  source (supply) reverse Current of TTL driver
IOL=16*10^(-3)
disp("IOL= "+string(IOL)+" A") //  Specified Maximum sink Current of TTL driver
IOH=-400*10^(-6)
disp("IOH= "+string(IOH)+" A") //  Specified Maximum source Current of TTL driver
Fan_out=abs((IOH/IIH))
disp("Fan-out=abs((IOH/IIH)=abs((IOL/IIL))= "+string(Fan_out))// Fan-out of TTL
