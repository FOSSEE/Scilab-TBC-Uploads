//chapter-4 page 142 example 4.3
//==============================================================================
clc;
clear;

//For an air filled coaxial cable
f=9.375*10^9;//operating frequency in Hz
c=3*10^10;//Velocity of Light in cm/sec
disp('Assuming a ratio of (b/a)=2.3 and (b+a)<(w/pi) to exclude higher order modes and a dominant mode propagating');
a=0.36432;//length of coaxial cable in cm
x=2.3;//ratio of b/a
 
//CALCULATION
w0=(c/f);//free space wavelength in cm
Pbd=(3600*(a^2)*log(x));//Breakdown power of a coaxial cable in kW

//OUTPUT
mprintf('\nBreakdown power of a coaxial cable is Pbd=%3.0f kW',Pbd);

//=========================END OF PROGRAM===============================
