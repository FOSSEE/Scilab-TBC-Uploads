clc
clear

//input
ib1=-100;//base current in micro amperes
vce1=10;//emitter collector voltage in volts
ib2=-50;//base current in microamperes
vce2=25;//emitter collector voltage in volts
//locate a point at vce=10V and Ib=-100uA and draw tangent to it.
//from tangent co-ordinates
a1=20;
a2=5;
a3=5.22;
a4=4.55;
//locate a point at vce=25V and Ib=-50uA and draw a tangent to it.
//from the tangent co-ordinates
vbe1=30;//base emitter voltage in millivolts
vbe2=20;//base emitter voltage in millivolts
vbe3=3.65;//base emitter voltage in millivolts
vbe4=2.9;//base emitter voltage in millivolts

//calculations
r0=((a1-a2))/(a3-a4);//input resistance in kilo ohms
R0=(vbe1-vbe2)/(vbe3-vbe4);//input resistance in kilo ohms

//output
mprintf('the output resistances for the specified conditions are %3.1f kilo ohms and %3.1f kilo ohms.',r0,R0)
