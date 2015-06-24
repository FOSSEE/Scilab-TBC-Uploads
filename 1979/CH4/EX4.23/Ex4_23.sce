//chapter-4 page 156 example 4.23
//==============================================================================
clc;
clear;

//For an air filled rectangular waveguide
a=0.023;//Length of an air filled  Rectangular Waveguide in m
b=0.01;//breadth of an air filled Rectangular Waveguide in m
c=3*10^8;//Velocity of Light in m/sec
f=9.375*10^9;//Frequency in Hz in TE11 mode
w0=0.01;//Free space wavelength in m
wc=0.02;//Cutoff wavelength in m
Pmax=746;//Max power =1 horsepower  in W

//CALCULATION
wo=(c/f);//Free space wavelength in cm
Pbd=(597*a*b*sqrt(1-(wo/(2*a))^2));//The breakdown power for the dominant mode ie TE11 in W
wg=(w0/sqrt(1-(w0/wc)^2));//Guide wavelength in m
Emax=(sqrt((Pmax*wg)/(6.63*10^(-4)*w0)))/1000;//Max electric field in kV/m

//OUTPUT
mprintf('\nThe breakdown power for the dominant mode ie TE11 is Pbd=%1.5f W \nMax electric field is Emax=%1.4f kV/m',Pbd,Emax);

//=========================END OF PROGRAM===========================================


//Note: Check the answers once
//Correct answers are
//The breakdown power for the dominant mode ie TE11 is Pbd=0.09864 W 
//Max electric field is Emax=1.1398 kV/m 
