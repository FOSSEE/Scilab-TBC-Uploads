//Chapter 1
//Ex1.14, page no 44
// CTS Signal
// Continuous Time Fourier Transforms of
// Sinusoidal waveforms(a)sin(Wot)(b)cos(Wot)
clear ;
clc ;
close ;
// CTFT
T1 = 2;
T = 4* T1;
Wo = 2* %pi /T;
W = [-Wo ,0, Wo ];
ak = (2* %pi *Wo*T1/ %pi )/ sqrt ( -1);
XW = [-ak ,0, ak ];
ak1 = (2* %pi*Wo*T1/%pi);
XW1 =[ ak1 ,0, ak1 ];
//displaying the given function
figure
a =gca();
a.y_location="origin";
a.x_location="origin";
plot2d3('gnn',W,imag(XW),2);
poly1=a.children(1).children(1) ;
poly1.thickness =3;
xlabel('W' );
title( 'CTFT of sin(Wot ) ')
//displaying the fourier Transform of the given function
figure
a =gca();
a.y_location="origin";
a.x_location="origin";
plot2d3('gnn',W,XW1,5);
poly1 =a.children(1).children(1) ;
poly1.thickness = 3;
xlabel('W' );
title( 'CTFT of cos (Wot)')
