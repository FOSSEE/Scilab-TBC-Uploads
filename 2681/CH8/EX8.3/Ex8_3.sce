//half power radiation pattern and beamwidth between first null
//given
clc
Da=0.15//metre
f=9d+9//hertz
v=3d+8//m/s
lemda=v/f//metre
NNBW=140*(lemda/Da)//degree
HPBW=70*(lemda/Da)//degree
gp=6.4*(Da/lemda)^2//gain pattern
gp_decibles=10*log10(gp)//changing to db
gp_decibles=round(gp_decibles*100)/100///rounding off decimals
HPBW=round(HPBW*100)/100///rounding off decimals
NNBW=round(NNBW*100)/100///rounding off decimals
disp(gp_decibles,HPBW,NNBW,'the half power beamwidth and  beamwidth between first null and the gain pattern in degrees and decibles')//degree,db

