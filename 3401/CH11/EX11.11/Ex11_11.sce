clc

micron=400// cm^2/V-s
L=4*10^-6// m
VT=1// V
VGS=3// V
ftau=(micron*(VGS-VT))/(2*%pi*L*L)
disp(ftau,"the value of fr is")
