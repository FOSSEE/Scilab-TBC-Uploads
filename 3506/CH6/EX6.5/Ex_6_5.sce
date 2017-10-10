//Optical Fiber communication by A selvarajan
//example 6.5
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
d=10*10^-6//seperation between electrodes
ne=2.2// approximate inder in absence of voltage
r33=32*10^-12//poper electro optic coefficient
lambda=1*1e-6//wavelength in m
L=5*10^-3//length of electrode in m
V=d*lambda/(2*%pi*ne^3*r33*L)//Voltahe required for using the device as BPSK modulator
mprintf("Voltage required for using the device as BPSK modulator=%fV",V)//the answer is different because of rounding off error

