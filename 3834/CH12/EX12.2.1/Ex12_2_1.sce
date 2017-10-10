//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 12.2.1
clc;
clear ;
//given

deltaf=100E9;//spacing in Hz
lambda=1550;//wavelength in nm
c=3E17;//speed of light in nm/s
f=c/lambda;

x=1/(f*f);
deltalambda=c*deltaf*x;//Spacing between channels in nm

mprintf("Spacing between channels is = %.2f nm",deltalambda);
