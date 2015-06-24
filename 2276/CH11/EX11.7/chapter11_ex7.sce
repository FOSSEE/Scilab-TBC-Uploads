clc
clear

//input
ib1=-50;//base current in micro amperes
vce1=0;//emitter collector voltage in volts
ib2=-25;//base current in microamperes
vce2=6;//emitter collector voltage in volts
//locate a point at vce=0V and Ib=-50uA and draw tangent to it.
//from tangent co-ordinates
a1=150;
a2=87.5;
a3=75;
a4=25;
//locate a point at vce=6V and Ib=-25uA and draw a tangent to it.
//from the tangent co-ordinates
vbe1=200;//base emitter voltage in millivolts
vbe2=100;//base emitter voltage in millivolts
vbe3=50;//base emitter voltage in millivolts
vbe4=0;//base emitter voltage in millivolts

//calculations
ri=((a1-a2))/(a3-a4);//input resistance in kilo ohms
Ri=(vbe1-vbe2)/(vbe3-vbe4);//input resistance in kilo ohms

//output
mprintf('the input resistances for the specified conditions are %3.2f kilo ohms and %3.0f kilo ohms.',ri,Ri)
