//Determine the value of output voltage
clear;
clc;
//soltion
//given

Vcc=12;//V
Rb=150*10^3;//ohm
Rc=5*10^3;//ohm
B=200;// beta
hie=2*10^3;//ohm
ro=60*10^3;//ohm      // 1/hoe
Vi=1*10^-3;//V
Ib=Vcc/Rb;
Ic=B*Ib;
Icsat=Vcc/Rc;
// Icsat < Ic therefore transistor is in saturation mode and outpuut voltage wil be zero
Vo=0;
printf("The output voltage= %.0f V",Vo);
