clc;clear;
//Example 9.8

//given data
T1=300;
T6=1300;
r=8;//overall compression ratio

//calculations
//as it is case of intercoolimg
ri=sqrt(r);//ri stands for P2/P1 = P4/P3 = P6/P7 = P8/P9
//from A-17 at T1
h1=300.19;
Pr1=1.386;
Pr2=ri*Pr1;
//from A-17 at Pr2
T2=403.3;
h2=403.31;
//from A-17 at T6
h6=1395.97;
Pr6=330.9;
Pr7=Pr6/ri;
//from A-17 at Pr7
T7=1006.4;
h7=1053.33;
//at inlets
T3=T1;h3=h1;T8=T6;h8=h6;
//et exits
T4=T2;h4=h2;T9=T7;h9=h7;h5=h7;
Win=2*(h2-h1);
Wout=2*(h6-h7);
Wnet=Wout-Win;
qin=(h6-h4)+(h8-h7);
rbw=Win/Wout;
disp(rbw,'back work ratio');
nth=Wnet/qin;
disp(nth,'thermal efficiency is')
//part - b
disp('part - b');
qin=(h6-h5)+(h8-h7);
nth=Wnet/qin;
disp(nth,'thermal efficiency is')
