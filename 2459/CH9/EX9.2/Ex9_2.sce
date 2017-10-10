//chapter9
//example9.2
//page145

Vi_p=20 // V
rf=10 // ohm
Rl=500 // ohm
Vo=0.7 // V
Vin=20 // V

// peak current through diode will occur when Vin=Vf so
Vf=Vin
// since Vf=Vo+If_peak(rf+Rl) making If_peak as subject we get
If_peak1=(Vf-Vo)/(rf+Rl) // in ampere
Vout_peak1=If_peak1*Rl

// for ideal diode, Vo=0 and rf=0 so
// Vf=If_peak*Rl so we get
If_peak2=Vf/Rl  // in ampere
Vout_peak2=If_peak2*Rl

printf("peak current through given diode = %.3f mA and peak output voltage = %.3f V \n",If_peak1*1000,Vout_peak1)
printf("peak current through ideal diode = %.3f mA and peak output voltage = %.3f V \n",If_peak2*1000,Vout_peak2)
