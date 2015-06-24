//minimum distance between two antennas
//given
clc
Da=5//metre
f=5d+9//hertz
v=3d+8//m/s
lemda=v/f//metre
r=2*(Da^2)/lemda//metre
r=round(r*100)/100///rounding off decimals
disp(r,'the minimum distance required between two antennas in metre')//metre

