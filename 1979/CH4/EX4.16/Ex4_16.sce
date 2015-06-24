//chapter-4 page 152 example 4.16
//==============================================================================
clc;
clear;

n=120*(%pi);//Intrinsic Impedance
a=3;//Length of Rectangular Waveguide in cm
b=2;//Width of Rectangular Waveguide in cm
f=10^10;//Frequency in Hz
c=3*10^10;//Velocity of Light in cm/sec

//CALCULATION
wc=((2*a*b)/sqrt(a^2+b^2));//Cutoff wavelength in TM11 mode in cms
w0=(c/f);//Free space wavelength in cms
ZTM=(n*sqrt(1-(w0/wc)^2));//Characteristic Wave Impedance in ohms

//OUTPUT
mprintf('\nCharacteristic Wave Impedance is ZTM=%2.3f ohms',ZTM);


//=========================END OF PROGRAM=================================

//Note: Check the given answer once it is wrong
 //currect answer is 163.242 ohms
