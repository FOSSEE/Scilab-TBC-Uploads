// to find the volume resistance and the surface leakage resistance
// example 7-8 in page 180
clc;
//Data given
Is=5e-6;// surface current in ampere
Iv=1.5e-6;// volume current in ampere
E=10000;// supply voltage in volt
// calculation
printf("volume resistance=%0.1e ohm\n",E/Iv);
printf("surface leakage resistance=%0.1e ohm",E/(Is-Iv));
//result
//volume resistance=6.7e+009 ohm
//surface leakage resistance=2.9e+009 ohm 