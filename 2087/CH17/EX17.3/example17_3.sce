
//example 17.3
//design submerged pipe
clc;funcprot(0);
//given
q=0.04;         //discharge through outlet
D=100.0;         //F.S.L of distributing canal
wc=99.90;      //F.S.L of water course
dep=1.1;       //full supply depth distributing canal
f=0.01;         //coefficient of friction
g=9.81;      //acceleration due to gravity
L=9;         //Length of pipe

H=D-wc;        //working head
//first trial
//taking d=22.8 cm
d=22.8;
C=(d/((1.5*d/(400*f)+L)*f))^0.5/20;
A=q/(C*(2*g*H)^0.5);
d=(4*A/%pi)^0.5*100;
//second trial
C=(d/((1.5*d/(400*f)+L)*f))^0.5/20;
A=q/(C*(2*g*H)^0.5);
d=(4*A/%pi)^0.5*100;
d=round(d*100)/100;
mprintf("diameter of pipe required=%f cm.",d);
mprintf("\nprovide diameter of pipe as 25 cm.");


