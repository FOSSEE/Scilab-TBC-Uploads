

//example 3.20
//calculate
//maximum storage capacity;depth of irrigation water
//field irrigation requirement;water required at canal outlet
clc;
//Given
Fc=0.27;               //Field capacity
pwp=0.13;              //permanent wilting point
d=80;                 //depth of soil(cm)
gammad=1.5;           //dry unit weigth of soil(g/cc)
gammaw=1;             //unit weigth of water(g/cc)
M=0.18;               //avearge soil moisture
eita=0.8;             //field efficiency
FC=0.15;              //field channel
SC=gammad*d*(Fc-pwp)/gammaw;
D=gammad*d*(Fc-M)/gammaw;
FIR=D/eita;
W=FIR/(1-FC);
W=round(W*10)/10;
mprintf("maximum storage capacity=%f cm",SC);
mprintf("\ndepth of irrigation water=%f cm",D);
mprintf("\nfield irrigation requirement=%f cm",FIR);
mprintf("\nwater required at canal outlet=%f cm",W);

