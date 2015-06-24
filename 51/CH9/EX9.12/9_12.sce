clc;
clear;
Dg=1.69;//in.
Wg=0.0992;//lb
Ug=200;//ft/sec
Dt=1.5;//in.
Wt=0.00551;//lb
Ut=60;//ft/sec
kvis=(1.57*(10^(-4)));//(ft^2)/sec
Reg=Ug*Dg/kvis;
Ret=Ut*Dt/kvis;
//the corresponding drag coefficients are calculated as
CDgs=0.25;//standard golf ball
CDgsm=0.51;//smooth golf ball
CDt=0.5;//table tennis ball
Dgs=0.5*0.00238*(Ug^2)*%pi*((Dg/12)^2)*CDgs/4;//lb
Dgsm=0.5*0.00238*(Ug^2)*%pi*((Dg/12)^2)*CDgsm/4;//lb
Dt=0.5*0.00238*(Ut^2)*%pi*((Dt/12)^2)*CDt/4;//lb
//the  corresponding decelerations are a=D/s=g*D/W
//deceleration relative to g=D/W
decgs=Dgs/Wg;
decgsm=Dgsm/Wg;
dect=Dt/Wt;
disp("STANDARD GOLF BALL:")
disp("lb",Dgs,"The drag coefficient=")
disp(decgs,"The deceleration relative to g=")
disp("SMOOTH GOLF BALL:")
disp("lb",Dgsm,"The drag coefficient=")
disp(decgsm,"The deceleration relative to g=")
disp("TABLE TENNIS BALL:")
disp("lb",Dt,"The drag coefficient=")
disp(dect,"The deceleration relative to g=")