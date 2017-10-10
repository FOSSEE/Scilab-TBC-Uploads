
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 9.6
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
dphibydt=4;//angula velocity of roatng mirror in rad/sec
L=0.1;//distance between mirror and the detector in meter
We=250;//shadow pulse width in micrometer;

dsbydt=L*dphibydt;
d0=We*[dsbydt];//outer diameter of the fiber in micrometer
mprintf("The outer diameter of the fiber is=%.2f um",d0);
