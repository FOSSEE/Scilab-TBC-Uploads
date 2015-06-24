//beamwidth power gain and directivity
//given
clc
f=8d+9//hertz
v=3d+8//m/s
d=0.09//m//aperture dimentions
W=0.04//m//aperture dimentions
lemda=v/f//metre
QE=56*lemda/d//
QH=67*lemda/W//
gp=4.5*W*d/lemda^2
gp_decibles=10*log10(gp)//changing to decibles
D=7.5*W*d/lemda^2//directivity
gp_decibles=round(gp_decibles*100)/100///rounding off decimals
QH=round(QH*100)/100///rounding off decimals
QE=round(QE*100)/100///rounding off decimals
disp(D,gp_decibles,QH,QE,'the beamwidth power gain and directivity in degrees,decibles')//degrees,decibles
