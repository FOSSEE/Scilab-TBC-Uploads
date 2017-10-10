
//To Calculate the Work Done by the Gas

//Example 26.2

clear;

clc;

pA=120*10^3;//pressure (in Pa) of the gas at Point A

pB=120*10^3;//pressure (in Pa) of the gas at Point B

pC=200*10^3;//pressure (in Pa) of the gas at Point C

VA=200*10^-6;//Volume at point A in m^3

VB=450*10^-6;//Volume at point B  in m^3

VC=450*10^-6;//Volume at point C in m^3

delVab=VB-VA;//change in the volume of the gas from point A to B

Wab=pA*delVab;//formula for finding the work done by the gas in the process A to B

printf("The Work done by the gas in the process A to B=%d joule",Wab);

delVbc=VC-VB;//change in the volume of the gas from point B to C

Wbc=(pC-pB)*delVbc;//formula for finding the work done by the gas in the process B to C

printf("\nThe Work done by the gas in the process B to C=%d joule",Wbc);

delVca=VC-VA;//change in the volume of the gas from point C to A

Wca=(0.5*(pC-pA)*delVca)+Wab;//formula for finding the work done by the gas in the process C to A

printf("\nThe Work done by the gas in the process C to A=%d joule",-Wca);
