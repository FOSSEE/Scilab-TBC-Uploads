clear
clc
CAo=1;
XA=0.75;//present
CA=1-XA;
//For mixed flow reactor
kt1=(CAo-CA)/CA;
//After new setup
kt2=3*kt1;//volume is reduced by 1/3
CA_unconverted=1/(kt2+1);
XA=1-CA_unconverted;//New XA after replacing the stirrer
printf("\n New Conversion Expected is %f",XA)
