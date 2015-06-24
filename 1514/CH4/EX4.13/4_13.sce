//chapter 4
//example 4.13
//page 132
clear all;
clc ;
//given
Vcc=10;//supply voltage V
Rc=1;//collector resistance kohm
Ico=50;//collector cutoff current nA
// at cutoff
Ic=Ico;//collector current at cutoff
Vce=Vcc-(Ico*10^-6);
printf("\nFor Transistor in cutoff,Vce=%.5f V",Vce);

//at saturation
Vce=0;
Ic=Vcc/Rc;
Vce=0.2;//from datasheet of 2N3904
printf("\nFor Transistor in saturation,Vce<=%.1f V",Vce);
