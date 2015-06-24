clc;clear;
//Example 9.6

//from 9.5
Wsc=244.16;//compressor
Wst=606.60;//turbine
h1=300.19;
h3=1395.17;

//given data
nC=0.8;
nT=0.85;

//calculations
Win=Wsc/nC;
Wout=nT*Wst;
rbw=Win/Wout;
disp(rbw,'back work ratio is');
h2a=h1+Win;
qin=h3-h2a;
Wnet=Wout-Win;
nth=Wnet/qin;
disp(nth,'thermal efficency is');
h4a=h3-Wout;
//from A-17 at h4a
T4a=853;
disp(T4a,'turbine exit temperature in K is')
