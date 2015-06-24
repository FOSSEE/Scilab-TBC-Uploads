clc
clear

//INPUT
v=21*10^4;//change in volume from vapour to liquid in cc
Ls=687;//latent heat of sublimation in cal
lv=607;//latent heat of vapourisation in cal
t=273;//temperature of water in deg.C
j=4.2*10^7;//joules constant in ergs/cal

//CALCULATIONS
sv=lv*j/(t*(v));//slope of vapourisation curve at 0 deg.C in dyne/sq.cm/deg.C
ss=Ls*j/(t*(v));//slope of sublimation curve at 0 deg.C in dyne/sq.cm/deg.C

//OUTPUT
mprintf('the slope of vapourisation curve is %3.2f dyne/sq.cm/deg.C \n the slope of sublimation curve is %3.2f dyne/sq.cm/deg.C',sv,ss)
