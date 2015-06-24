//power gain and directivity of a horn
//given
clc
f=8d+9//hertz
v=3d+8//m/s
d=0.1//m//aperture dimentions
W=0.05//m//aperture dimentions
lemda=v/f//metre
gp=4.5*W*d/lemda^2
gp_decibles=10*log10(gp)//changing to decibles
D=7.5*W*d/lemda^2//directivity
D_decibles=10*log10(D)
gp_decibles=round(gp_decibles*100)/100///rounding off decimals
D_decibles=round(D_decibles*100)/100///rounding off decimals
disp(D_decibles,gp_decibles,'the beamwidth power gain and directivity in decibles')//decibles
