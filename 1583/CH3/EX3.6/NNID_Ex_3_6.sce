clc
//Chapter 3:Network noise and intermodulation distortion
//example 3.6 page no 82
//given
NF=8//noise figure in dB
B=2.1*10^3//bandwidth
Rs=50//sourse resistance
Si_dB=NF-144+log10(B)//available input power in dBm
Si_W=(10^(Si_dB/10))/10^3//available input power in W
Ei=sqrt(Si_W*4*Rs)//minimum detectable signal
mprintf('the minimum detectable signal is %f uV',round(Ei*1e6*100)/100)
