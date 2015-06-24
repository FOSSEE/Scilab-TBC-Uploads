//chapter 4
//example 4.6
//page 109
clear;
clc ;
//given
hfe1=50;//minimum value
hfe2=150;//maximum value
Vcc=15;//supply voltage
Rc=1.98;//collector resistance in kohm
Rb=86;//base resistance in kohm
Vbe=0.7;
Ic1=(Vcc-Vbe)/(Rc*(1+1/hfe1)+Rb/hfe1);
Vce1=(Ic1/hfe1)*Rb+Vbe;

Ic2=(Vcc-Vbe)/(Rc*(1+1/hfe2)+Rb/hfe2);
Vce2=((Ic2/hfe2)*Rb)+Vbe;

printf("\nfor hfe=50,Vce=%.1f V,Ic=%.2f mA",Vce1,Ic1);
printf("\nfor hfe=150,Vce=%.1f V,Ic=%.2f mA",Vce2,Ic2);
