//beamwidth,directivity and capture area
//given
clc
f=9d+9//hertz
v=3d+8//m/s
gp_decibles=100//db
lemda=v/f//metre
gp=10^(gp_decibles/10)//
Da=lemda*sqrt(gp/6.4)//metre
A=%pi*(Da^2)/4//actual area
Ac=0.65*A//capture area
NNBW=140*(lemda/Da)//degree
HPBW=70*(lemda/Da)//degree
HPBW=round(HPBW*1D+5)/1D+5///rounding off decimals
NNBW=round(NNBW*1D+4)/1D+4///rounding off decimals
disp(HPBW,NNBW,Ac,'the half power beamwidth and  beamwidth between first null and the gain pattern in degrees and decibles')//degree,m^2,db
