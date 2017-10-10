//Example 5_4 page no:195
clc
f=500//frequency in Hz
Vrms=10
R=2*10^3
C=0.1*10^-6//capacitance in farad
Xc=1/(2*%pi*f*C)
Z=sqrt(R^2+Xc^2)
disp(Z,"impedence is (in ohm)")
angle=atand(-Xc/R)
disp(angle,"the phase angle is (in degree)")
I=Vrms/Z
disp(I*1000,"the current is (in mA)")//converting to milli ampere
Vc=I*Xc
disp(Vc,"capacitive voltage is (in volt)")
Vr=I*R
disp(Vr,"resistive voltage is (in volt)")
