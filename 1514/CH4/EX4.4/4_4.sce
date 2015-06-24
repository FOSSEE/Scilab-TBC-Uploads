//chapter 4
//example 4.4
//page 107
clear;
clc ;
//given
hfe1=50;
Vcc=15;//supply voltage
Vbe=0.7;
Rb=286;
Ib=1000*(Vcc-Vbe)/Rb;
Rc=2;//collector resistance in kohm
Ic=hfe1*Ib/1000;
Vce=Vcc-(Ic*Rc);
printf("\nFor hfe=50,Vce=%d V,Ic=%.1f mA,Ib=%d microA",Vce,Ic,Ib);

hfe2=150;
Ic=hfe2*Ib/1000;
Vce=Vcc-(Ic*Rc);
printf("\nFor hfe=150,Vce=%d V,Ic=%.1f mA,Ib=%d microA",Vce,Ic,Ib);
