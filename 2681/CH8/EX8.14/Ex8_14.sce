//null to null beamwidth and the gain power
//given
clc
HPBW=6//degree//half power beamwidth
f=6d+9//hertz
v=3d+8
NNBW=2*HPBW//degree//null to null beamwidth
lemda=v/f//metre
Da=70*(lemda/HPBW)//degree//half power beamwidth
gp=6.4*(Da/lemda)^2
gp_decibles=10*log10(gp)//changing to decibles
gp_decibles=round(gp_decibles*100)/100///rounding off decimals
disp(gp_decibles,NNBW,'the beamwidth between first null and gain power in degree and decibles')//degrees,decibles
