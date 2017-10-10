//Optical Fiber communication by A selvarajan
//example 6.4
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
delta_phi=%pi
d=4*10^-6//seperation between electrodes
n=2.2// approximate inder in absence of voltage
r13=30*10^-12//poper electro optic coefficient
row=0.4//overlap factor
lambda=1300*1e-9//wavelength in m
L=8*10^-3//length of electrode in m
delta_n=delta_phi*lambda/(2*%pi*L)//change in refractive index
V_pi=2*d*delta_n/(n^3*row*r13)//Voltahe required for using the device as BPSK modulator
mprintf("Voltage required for using the device as BPSK modulator=%fV",V_pi)
mprintf("\nVoltage length product for unit length is=%fVm",V_pi)
