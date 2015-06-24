//gain of paraboloid
//given
clc
Da=2.5//metre
f=5d+9//hertz
v=3d+8//m/s
lemda=v/f
gp=6.4*(Da/lemda)^2
gp_decibles=10*log10(gp)//changing to decibles
gp_decibles=round(gp_decibles*100)/100///rounding off decimals
disp(gp_decibles,'the gain of paraboloid in decibles')//db
