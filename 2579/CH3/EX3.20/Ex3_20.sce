//Ex:3.20
clc;
clear;
close;
D=30;// directive gain
l=D/4;
// array length L=l*y, where y is wavelength
y=1.5;//
Bw=114.6*sqrt(2/(5*y));// beamwidth of the major lobe in degree
// for Broadside case
// L=(D/2)*y=(30/2)*y=15y=array length
y1=15/4;
BWFN=114.6/(4*y1);// beamwidth for a broadside array in degree
printf("The array length = %f*y, where y is wavelength", l);
printf("\n The beamwidth of the major lobe = %f degree", Bw);
printf("\n The beamwidth for a broadside array = %f degree", BWFN);