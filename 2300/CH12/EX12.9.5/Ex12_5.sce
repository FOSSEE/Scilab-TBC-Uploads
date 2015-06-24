//scilab 5.4.1
//Windows 7 operating system
//chapter 12 Modulation and Demodulation
clc
clear
df=30//df=maximum frequency deviation in kilohertz(kHz)
fm=15//fm=modulation frequency of a sinusoidal audio signal in kilohertz(kHz)
mf=df/fm//mf=frequency modulation index
disp(mf,"1.The modulation index is mf=")
fc=100//fc=carrier wave frequency in megahertz(MHz)
disp("2.The three significant pairs of side frequencies are 100MHz+-15kHz(fc+-fm);100MHz+-30kHz(fc+-2fm);100MHz+-45kHz(fc+-3fm)")
wc=mf*3*fm//wc=channelwidth required for 3 above mentioned side frequency pairs
disp("kHz",wc,"3.The required channelwidth is ")

