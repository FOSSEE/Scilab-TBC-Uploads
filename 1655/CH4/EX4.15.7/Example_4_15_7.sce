// Example 4.15.7  page 4.40

clc;
clear;

NA=0.3;     //numerical aperture
n1=1.45;    //refractive index
M=250;      //material dispertion parameter in ps/nm/km
L=1;        //length
BW=50;      //Bandwidth in nm
c=3d8;      //speed of light

sigmaLamda=BW*L;
sigmaM=sigmaLamda*L*M*10^-12;
sigmaS=10^3*L*(NA)^2/(4*sqrt(3)*n1*c);
sigmaT=sqrt(sigmaM^2+sigmaS^2);     //computing total RMS pulse broadning
BLP=0.2/sigmaT;     //computing bandwidth length product
sigmaT=sigmaT*10^9;
sigmaM=sigmaM*10^9;
sigmaS=sigmaS*10^9;
BLP=BLP/10^6;
printf("\nTotal RMS pulse broadning is %.1f ns/km.\nBandwidth length product is %.1f MHz.km",sigmaT,BLP);
