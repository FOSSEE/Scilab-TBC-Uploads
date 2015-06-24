//half power beam width the gain power
//given
clc
NNBW=5//degree//null to null beamwidth
f=6d+9//hertz
v=3d+8
lemda=v/f//metre
Da=140*(lemda/NNBW)//degree//beamwidth between first null
HPBW=70*(lemda/Da)//degree//half power beamwidth
gp=6.4*(Da/lemda)^2
gp_decibles=10*log10(gp)//changing to decibles
disp(gp_decibles,HPBW,Da,'the beamwidth between first null and the value of half power beamwidth in degree')//degrees
//ERROR in the printing of the book
