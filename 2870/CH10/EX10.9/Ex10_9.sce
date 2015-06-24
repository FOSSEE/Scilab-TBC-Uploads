clc;clear;
//Example 10.9

//given data
P1=5;
P2=7000;
P3=P2;
T3=500;
P4=P1;

//gas cycle from Ex9-6
//d stands for '
h4d=880.36;
T4d=853;
qin=790.58;
wnetg=210.41;
nth=0.266
h5d=451.80;
//steam cycle
h2=144.78;
T2=33;
h3=3411.4;
T3=500;
wnets=1331.4;
nth=0.408;

//calculations
//Ein = Eout
//y is the ratio of ms/mg
y=(h4d-h5d)/(h3-h2);
disp(y,'the ratio of the mass flow rates of the steam and the combustion gases');
wnet=wnetg+y*wnets
nth=wnet/qin;
disp(nth,'the thermal efficiency of the combined cycle')
