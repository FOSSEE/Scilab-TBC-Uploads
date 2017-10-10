//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 3.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
lambda=633e-9;//Wavelength in m
Deltaf=5e6;//Frequency bandwidth in Hz
L=50e-3;//Length of the modulator in m
eta=0.7;//diffraction efficiency
lambdaa=4.3e-5;//Acoustic wavelength in m
va=3500;//Acoustic velocity in m/s

ThetaB=asind(lambda/(2*lambdaa));//Angle of diffraction in degrees
mprintf("ThetaB = %.2f degrees",ThetaB);

//As eta=(sin(Phi/2))^2, Rearranging the terms we get:
Phi=2*asind(sqrt(eta));
mprintf("\n Phi = %.1f degrees",Phi);

B=va/Deltaf;//Maximum optical beamwidth in m
mprintf("\n B = %.1f mm",B/1e-3);//Division by 10^(-3) to convert into mm
