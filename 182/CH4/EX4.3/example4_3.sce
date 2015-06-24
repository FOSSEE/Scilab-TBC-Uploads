
// example 4-3 in page 93
clc;
//Given data
Range=10;//range in volts
Ra=800e+3; Rb=100e+3; Rc=60e+3; Rd=40e+3; // given resistance values in ohm
E=7.5; //battery voltage in volts
Vgs=-5;// gate source voltage in volts
Vp=5;// base voltage of transistor 2 in volts
R=1e+3;// R=Rs+Rm=1 K-ohm
Im=1e-3;//FSD=1 mA
Vbe=0.7//base emitter voltage in volt
//calculation
Eg=E*((Rc+Rd)/(Ra+Rb+Rc+Rd));//gate voltage
Vs=Eg-Vgs;//souce voltage
Ve1=Vs-Vbe;// emitter voltage of transistor 1
Ve2=Vp-Vbe;//emitter voltage of transistor 2
V=Ve1-Ve2;// voltage difference b/w the two emitters
I=V/R;
P=I/Im;//P% of full scale
printf("THE METER READING=%.1f V\n",P*Range);
//result
//THE METER READING=7.500000 V