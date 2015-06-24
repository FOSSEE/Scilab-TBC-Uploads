//mouth diameter and the beamwidth of antenna
//given
clc
Da=0.15//metre
f=4d+9//hertz
gp=500//
v=3d+8//m/s
lemda=v/f//metre
Da=lemda*sqrt(gp/6.4)//diameter
NNBW=140*(lemda/Da)//degree
HPBW=70*(lemda/Da)//degree
Da=round(Da*1000)/1000///rounding off decimals
HPBW=round(HPBW*100)/100///rounding off decimals
NNBW=round(NNBW*100)/100///rounding off decimals
disp(NNBW,HPBW,Da,'the mouth diameter and the beamwidth of antenna in metre and degrees')//metre,degree

