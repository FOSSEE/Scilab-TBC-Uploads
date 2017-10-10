clc; clear; close;

//a
Reff=12.5;//in kiloohm
r=2/4;
Cload=4.2;//in fermifarad
T=4*Reff*r*Cload;
disp(T,'total delay(in picoseconds)=');

//b
Reff1=30;//in kiloohm
Cfanout=2;//in fermifarad
Cself=1;//in fermifarad
r1=2/6;
Cload1=Cself+Cfanout;
PLH=Reff1*Cload1*r1;
PHL=Reff*r*Cload1;
T1=2*(PHL+PLH);
disp(PLH,'rise delay(in picoseconds)=');
disp(PHL,'fall delay(in picoseconds)=');
disp(T1,'total delay(in picoseconds)=');
//answers vary due to roundoff error
