//Ex3_16
clc
//considering Lissajous pattern given in question
y1 = 2
y2 = 6
phi = asind(y1/y2)
disp("y1 = "+string(y1)+"cm")//minor axis
disp("y2 = "+string(y2)+"cm")//major axis
disp("phi = sin-1(y1/y2) = "+string(phi)+"degree")//phase difference
disp("OR")
phi = 180 - phi
disp("phi = "+string(phi)+"degree")
