clc
//calc the height to which liq in a cylinder rises when rotated
f=78/60;//rps
r=0.15;//m
g=9.81;//m/s^2
//omega=2*(%pi)*f
z=[(2*(%pi)*f)^2]*r^2/2/g;//m
disp("The liquid in the cylinder rises to a height of")
disp(z)
disp("m")