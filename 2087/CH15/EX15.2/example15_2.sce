

//example 15.2
//design an irrigation channel in alluvial soil by Laecy's theory
clc;funcprot(0);
//given
Q=15;              //Full supply discharge
f=1;               //silt factor
s=1/2;             //side slope of channel

//from Laecey regime channel (Fig.15.4(b)) B and D is obtained as;
B=15.1;
D=1.38;
//also from Fig.15.5 we get slope as
S=0.19/1000;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\nBed slope=%f.",S);

