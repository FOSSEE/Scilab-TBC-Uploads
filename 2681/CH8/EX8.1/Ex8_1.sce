//given
clc
Da=2.5//metre
f=5d+9//hertz
v=3d+8
lemda=v/f//metre
NNBW=140*(lemda/Da)//degree//beamwidth between first null
HPBW=70*(lemda/Da)//degree//half power beamwidth
disp(HPBW,NNBW,'the beamwidth between first null and the value of half power beamwidth in degree')//degrees
