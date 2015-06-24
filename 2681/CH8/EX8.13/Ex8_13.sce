//mouth diameter and power gain
//given
clc
NNBW=2//degree//null to null beamwidth
f=4d+9//hertz
v=3d+8//m/s
lemda=v/f//metre//
Da=140*(lemda/NNBW)//degree//beamwidth between first null
gp=6.4*(Da/lemda)^2
gp_decibles=10*log10(gp)//changing to decibles
gp_decibles=round(gp_decibles*100)/100///rounding off decimals
disp(gp_decibles,Da,'the beamwidth between first null and the value of half power beamwidth in decibles and degree')//decibles,degrees

