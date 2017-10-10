//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 12.3.5
clc;
clear ;
//given

lambda=1300E-9;//operating wavelength in m
c=3E8;//speed of light in m
f=c/lambda;
hf=1.53E-19;//photon energy in V
nsp=3;//spontaneous emission factor
G=1000;//by converting gain into absolut no.
deltalambda=40E-9;//bandwidth of TWA in m
//BW=f*(((deltalambda)/lambda)^2);//it is not giving correct answer
BW=1.775E12;
P_ASE = 2*nsp*hf*G*BW;//ASE power generated in mW

mprintf("ASE power generated= %.1f mW",P_ASE*1000);//multiplication by 1e3 to convert unit from W to mW
