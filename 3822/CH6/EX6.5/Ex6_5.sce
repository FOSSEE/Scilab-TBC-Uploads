
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 6.5
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
//case (1):
n1=3.5;//refractive index of layer 1
alpha=1e5;//it is in m^-1
d=3e-6//depth of planar layer in m 
W=1e-6//width of depletion layer in m
//case (2):
alpha2=1e6;//it is in 1/m

Rf=[(n1-1)/(n1+1)]^2;//reflection coefficient
//case (1):
PW1byP1=exp(-alpha*(d))*[1-exp(-alpha*W)]*(1-Rf);//fraction of incident power absorbed
//case (2):
PW2byP1=[exp(-alpha2*(d))]*[1-exp(-alpha2*W)]*(1-Rf);//fraction of incident power absorbed
mprintf("Fraction of energy absorbed for case 1 is=%0.2f percentage",PW1byP1*100);
mprintf("\nFraction of energy absorbed for case 2 is=%0.2f percentage",PW2byP1*100);
