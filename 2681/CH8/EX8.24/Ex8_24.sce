//effective area of a half wave dipole
//given
clc
f=0.6d+9//hertz
Vo=3d+8//m/s
gd=1.644//directivity of half wave dipole
lemda=Vo/f
Ae=(lemda^2/(4*%pi))*gd//metre^2
Ae=round(Ae*1d+4)/1d+4///rounding off decimals
disp(Ae,'the effective area of a half wave dipole in metre^2')//m^2
