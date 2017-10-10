//chapter 3 example//
clc
clear
//spectrum width=W,laser source emits ligth at=D,bandwidth distance product=fZ,speed of light=C//
W=0.003//in micro meters//
D=0.85//in micro meters//
x=W/D;
Ym=0.021//obtained from graph//
C=3*(10^8);//in mts per second//
fZ=C/(4*x*Ym)*(10^-12);
printf("\n bandwidth distance product=%f GHz Km \n",fZ);