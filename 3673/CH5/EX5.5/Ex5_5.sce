//Example 5_5 page no:195
clc
Vr=20
Vc=30
Vs=sqrt(Vr^2+Vc^2)
disp(Vs,"source voltage is (in volt)")
angle=atand(Vc/Vr)
disp(angle,"the phase angle is (in degree)")
