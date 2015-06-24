//Example 4 . 8
// To De s ign an Analog High Pas s I IR But t e rwo r th F i l t e r
// For the g i v e n c u t o f f f r e q u e n c y Wc = 1000 Hz
clear all;
clc ;
close ;
omegap = 500;
omegas = 1000;
delta1_in_dB = -3;
delta2_in_dB = -40;
delta1 = 10^( delta1_in_dB /20)
delta2 = 10^( delta2_in_dB /20)
// Ca l c u l a t i o n o f F i l t e r Order
N = log10 ((1/( delta1 ^2) ) -1) /(2* log10 ( omegap / omegas ))
N = ceil (N)
omegac = omegas ;
// Po l e s and Gain Ca l c u l a t i o n
[pols , gain ]= zpbutt (N, omegac );
//Magni tude Re sponse o f Analog I IR But t e rwor th F i l t e r
h= buttmag (N, omegac ,1:500) ;
//Magni tude i n dB
mag =20* log10 (h);
plot2d ((1:500) ,mag ,[0,-180,500,20]) ;
a= gca ();
a. thickness = 3;
a. foreground = 1;
a. font_style = 9;
xgrid (5)
xtitle ( 'Magni tude Re spons e o f But t e rwo r th HPF F i l t e r Cu t o f f f r e q u e n c y = 1000 Hz ' , ' Analog f r e q u e n c y i n')
