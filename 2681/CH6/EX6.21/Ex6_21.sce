//resonant frequency
//given
clc
a=0.03//m
b=0.01//m
c=0.04//m
v=3d+8//speed of wave
fr=(v/2)*(sqrt((1/a^2)+(1/b^2)+(1/c^2)))//hertz
disp(fr*1d-9,'resonant frequency for TM110 mode in Ghz')//Ghz
