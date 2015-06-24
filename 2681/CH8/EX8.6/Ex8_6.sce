//beamwidth,directivity and capture area
//given
clc
Da=5//metre
f=9d+9//hertz
v=3d+8//m/s
lemda=v/f//metre
A=%pi*(Da^2)/4//actual area
Ac=0.65*A//capture area
NNBW=140*(lemda/Da)//degree
HPBW=70*(lemda/Da)//degree
D=6.4*(Da/lemda)^2//directivity
D_decibles=10*log10(D)//changing to db
NNBW=round(NNBW*1D+4)/1D+4///rounding off decimals
HPBW=round(HPBW*1D+3)/1D+3///rounding off decimals
Ac=round(Ac*100)/100///rounding off decimals
D_decibles=round(D_decibles*100)/100///rounding off decimals
disp(D_decibles,Ac,HPBW,NNBW,'the half power beamwidth and  beamwidth between first null and the gain pattern in degrees and decibles')//degree,m^2,db

