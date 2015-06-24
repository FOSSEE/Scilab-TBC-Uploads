//fiber optic communications by joseph c. palais
//example 7.6
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
Wg1=1.1//band gap energy of silicon pin diode in eV
Wg2=0.67//band gap energy of germanium pin diode in eV
//to find
lambda_c1=1.24/Wg1//wavelength in um
lambda_c2=1.24/Wg2//wavelength in um
mprintf('Cutoff wavelength for silicon pin diode=%fum',lambda_c1)
mprintf('\nCutoff wavelength for germanium pin diode=%fum',lambda_c2)
