clc;
// Chapter 2 Switched communication systems
//Example 2.5,page no 127
//given
N=1000//no of turns
L1=5e-8//inductance per turn
L=N^2*L1//total inductance
mprintf('total inductance is %f H \n',L)
R=100//resistance of winding in ohm
MMF=5//operating MMF in amp. turn
V=1//voltage of received signal in volts
Im=V/R//maximum current
mprintf('maximum current is %f mA \n',Im*1e3)
Io=MMF/N//operating current
mprintf('operating current is %f mA \n',Io*1e3)
to=(L/R)*log(1/(1-(Io/Im)))//operate lag
mprintf('operate lag is %f msec \n',to*1e3)
