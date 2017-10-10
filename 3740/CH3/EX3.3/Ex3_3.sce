//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 3.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
Phi=%pi/30;//Given phase retardation
Deltaf=1e9;//Frequency bandwidth in Hz
D=25e-3;//Diameter of the circular aperture of a KD*P Pockels cell in m
L=30e-3;//Length of the cell in m
lambda=633e-9;//Wavelength in m
Epsilon0=8.85e-12;//Permittivity of free space in SI Units
Epsilonr=50;//Dimensionless Relative permittivty of the crystal
r=26.4e-12;//Linear electro-optic coefficient of KD*P crystal in m/V
n0=1.51;//refractive index of the crystal

A=%pi*((D/2)^2);//Cross-sectional area of the crystal in m^2
P=(Phi^2)*(lambda^2)*A*Epsilon0*Epsilonr*Deltaf/(4*%pi*(r^2)*(n0^6)*L);//Power required for the desired phase retardation in W 
mprintf("P = %.1f W",P);
