// Example 6.20;//voltage gain
clc;
clear;
close;
re=7.5;//A.C. Resistance
R1=470;//resistance in  ohms
Rc=2.2;// resistance in killo ohms
Re=510;//emitter resistance in  ohms
//H Paramters are
hie=900;//in  ohms
hfe=120;
A=-(hfe)/(hie+Re);///gain without feedback
Beta=-Re;//gain
GF= (1+A*Beta);//gain factor
Af=A/(GF);//GAIN WITH FEEDBACK
Avf= Af*Rc*10^3;//voltage gain with feedback
Av= -(Rc*10^3/re);//voltage gain without feedback
disp(Avf,"voltage gain with feedback is")
disp(Av,"voltage gain without feedback is")
