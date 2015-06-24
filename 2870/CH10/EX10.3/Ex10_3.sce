clc;clear;
//Example 10.3

//given data
P1=10;
P2=3000;
P3=3000;
T3=350;
P4=10;

//from steam tables
//at state 1
h1=191.81;
v1=0.00101;
//at state 2
//s2=s1
//at state 3
h3=3116.1;
s3=6.7450;
//at state 4
s4=s3;
sf=0.6492;
sfg=7.4996;
hf=191.81;
hfg=2392.1;

//calculations
//part - a
win=v1*(P2-P1);
h2=h1+win;
x4=(s4-sf)/sfg;
h4=hf+x4*hfg;
qin=h3-h2;
qout=h4-h1;
nth=1-(qout/qin);
disp(nth,'the thermal efficiency of this power plant');
//part - b
//States 1 and 2 remain the same in this case, and the enthalpies at state 3 (3 MPa and 600°C) and state 4 (10 kPa and s4=s3) are determined to be
h3=3682.8;
h4=2380.3;
x4=0.915;
qin=h3-h2;
qout=h4-h1;
nth=1-(qout/qin);
disp(nth,'the thermal efficiency if steam is superheated to 600° instead of 350°C');
//part - c
//State 1 remains the same in this case, but the other states change. The enthalpies at state 2 (15 MPa and s2  s1), state 3 (15 MPa and 600°C),and state 4 (10 kPa and s4  s3) are determined in a similar manner to be
h2=206.95;
h3=3583.1;
h4=2115.3;
x4=0.804;
qin=h3-h2;
qout=h4-h1;
nth=1-(qout/qin);
disp(nth,'the thermal efficiency if the boiler pressure is raised to 15 MPa while the turbine inlet temperature is maintained at 600°C');

