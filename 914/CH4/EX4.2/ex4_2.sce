clc;
warning('off');
printf("\n\n example4.2 - pg100");
// given
T1=0;  //[degC]
T2=10;  //[degC]
km=17.17;  //[W/m*K]
l=1;  //[m]
r2=1.1875;
r1=1.0335;
deltaT=T1-T2;
// using the formula Qr=-km*((2*pi*l)/ln(r2/r1))*deltaT;
Qr=-km*((2*%pi*l)/log(r2/r1))*deltaT;
printf("\n\n qr=%fW\n the plus sign indicates that the heat flow is radially out from the center",Qr);

