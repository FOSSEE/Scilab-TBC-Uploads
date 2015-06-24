//time required for wave to travell
//given
clc
L=1.2d-6//H/m
C=12.5d-12//F/m
leng_line=2//length of the line in meter
t=sqrt(L*C)*leng_line//time required for the wave to travell in seconds
t=round(t*1d+12)/1d+12///rounding off decimals
disp(t*1d+9,'the time required for wave to travell in nanoseconds')//nsec
