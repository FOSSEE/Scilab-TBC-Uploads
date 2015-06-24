//half power radiation pattern and beamwidth between first null
//given
clc
Da=12//metre
f=10d+9//hertz
v=3d+8//m/s
lemda=v/f//metre
ie=0.6//illumination efficiency
gp=ie*(Da/lemda)^2//gain pattern
gp_decibles=10*log10(gp)//changing to db
gp_decibles=round(gp_decibles*100)/100///rounding off decimals
disp(gp_decibles,'the power gain in decibles')//degree,db
