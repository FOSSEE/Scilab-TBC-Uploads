
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 11.5
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
n1=1.45//refractive index of core
delta=0.01;//relative refractive index difference
Br=100e6;//data rate in bps
C=3e8// velocity of light in m/s
delta_ts=8e-9//silica fiber link rise time in s
lambda=830e-9//wavelength in m
delta_lambda=40e-9//spectral width in m
delta_tr=10e-9//rise time in 10ns
M=0.024//silica fiber parameter
L=2.5e3//length of link in m
delta_tmodal=3.5e-9*L/1e3//intermodal dispersion delay in s
delta_tmat=(-L/C)*(delta_lambda/lambda)*(M)//material dispersion in s
delta_tsys=1.1*sqrt(delta_ts^2+delta_tr^2+delta_tmat^2+delta_tmodal^2)//system delay in s
BT=0.7/delta_tsys//Max bit rate for RZformat
mprintf("\n Max bit rate for RZ format is=%.2fx10^6 bps",BT/1e6);//division by1e6 to convert the unit from bps to *10^6
BT=0.35/delta_tsys//Max bit rate for NRZformat
mprintf("\n Max bit rate for NRZ format is=%.2fx10^6 bps",BT/1e6);
// the answer differ because of roundoff
