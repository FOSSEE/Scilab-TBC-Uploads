// Ex 5 Page 344

clc;clear;close;
// Given

VA=60;//V
I=0.6;//A
// (VB-VA)/20+(VB-VC)/20+VB/20-I=0
//3*VB-VC=72 for node B eqn(1)
//(VC-VA)/50+(VC-VB)/30+(VC-12)/50+VC/100=0
//-5*VB+10*VC=144 eqn(2)
A=[3 -1;-5 10];
B=[72;144];
X=A**-1*B;
VB=X(1);//V
VC=X(2);//V
printf("Voltage acroos 100 ohm  = %.1f V",VC)
VC=24;//V
VB=(72+VC)/3 ;// from eqn(1)
// Node C 
// (VC-VA)/50+(VC-VB)/20+(VC-12)/50+VC/100+VC/R=0 eqn(3)
R=100*VC/(144+5*VB-10*VC);//ohm
printf("\nR=%.1f ohm",R)
