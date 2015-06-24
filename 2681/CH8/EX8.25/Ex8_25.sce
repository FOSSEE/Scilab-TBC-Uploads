//effective area of hertzian dipole
//given
clc
f=0.2d+9//hertz
Vo=3d+8//m/s
lemda=Vo/f
Ae=(lemda^2/(4*%pi))//metre^2//ERROR
Ae=round(Ae*1000)/1000///rounding off decimals
disp(Ae,'the effective area of a half wave dipole in metre^2')//m^2
//ERROR in the  calculation of the book as effective area includes lemda square not cube.
