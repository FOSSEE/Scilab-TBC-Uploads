//fiber optic communications by joseph c. palais
//example 8.4
//OS=Windows XP sp3
//Scilab version 5.4.1
//given
clc
clear all
loss=0.25//loss for each type of misalignment in dB
a=50//core radius in um
NA=0.24//numerical aperture
dby2a=0.045//lateral offset from given plots for loss of 0.25dB
theta=2.4//angular misalignment from given plots for loss of 0.25dB
xbya=0.94//end separation from given plots for loss of 0.25dB

//tofind
d=dby2a*a*2//lateral offset in um
x=xbya*a//end separation in um
mprintf("lateral offset in =%fum",d)
mprintf("\nangular misalignment=%fdegrees",theta)
mprintf("\n End separation =%fum",x)
