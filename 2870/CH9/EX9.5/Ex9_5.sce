clc;clear;
//Example 9.5

//given data
T1=300;
r=8;
T3=1300;

//calcualtions
//Process 1-2
//at T1
h1=300.19;
Pr1=1.386;
Pr2=r*Pr1;
//at Pr2
T2=540;
h2=544.35;
disp(T2,'temperature at exit of compressor in K');
//Process 3-4
//at T3
h3=1395.97;
Pr3=330.9;
Pr4=Pr3/r;
//at Pr4
T4=770;
h4=789.37;
disp(T4,'temperature at turbine exit in K');
Win=h2-h1;
Wout=h3-h4;
rbw=Win/Wout;
disp(rbw,'back work ratio');
qin=h3-h2;
Wnet=Wout-Win;
nth=Wnet/qin;
disp(nth,'thermal efficeincy')
