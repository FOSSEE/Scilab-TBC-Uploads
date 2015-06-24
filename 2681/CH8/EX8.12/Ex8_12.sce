//mouth diameter and capture area
//given
clc
f=4d+9//hertz
v=3d+8//m/s
NNBW=8//degree
lemda=v/f//metre
Da=140*(lemda/NNBW)//degree
A=%pi*(Da^2)/4//actual area
Ac=0.65*A//capture area
Ac=round(Ac*1000)/1000///rounding off decimals
disp(Ac,Da,'the mouth diameter and capture area in metre and metersquare')//m,m^2
