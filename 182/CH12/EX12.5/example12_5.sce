// to find the maximum measurable voltage and the instrument resolution
// example 12-5 in page 367
clc;
// Data given
V=1.0190;// Standard cell voltage V=VR3=VB2 in volt
R13=100; R3=509.5; R4=290.5;// R13 is the slider resistance and resistance R3 and R4 all in ohm
R=100;// resistances R6 through R12 in ohm
l=100D-2;// length of the sliding wire in meter
// claculaion
VAE=(V/R3)*(R3+R4);// maximum measurable voltage in volt where I1=V/R3
printf("Maximum measurable voltage=%.1f V\n",VAE);
I2=VAE/(8*R);//current I2 in ampere
VAB=I2*R13;//voltage across R13 in volt
Vpl=VAB/l;// slide wire voltage per unit length in volt/meter
printf("instrument resolution=(+/-)%.1f mV",Vpl)
//result
//Maximum measurable voltage=1.6 V
//instrument resolution=(+/-)0.2 mV 