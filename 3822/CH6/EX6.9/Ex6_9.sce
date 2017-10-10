
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 6.9
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
tf=8e-12;//electron transit time in second
G=60//photoconductive gain of the device

Bm=1/(2*%pi*tf*G);//the maximum 3dB bandwidth in Hz
mprintf("The 3dB bandwidth is=%.2f MHz",Bm/1e6);//division by 1e6 to covert unit from Hz to MHz
//The answer in textbook is wrong
