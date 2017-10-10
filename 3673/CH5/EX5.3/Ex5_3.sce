//Example 5_3 page no:193
clc
Vr=70;
Vl=20;
Vs=sqrt(Vr^2+Vl^2)
disp(Vs,"source voltage is (in volts)")
angle=atand(Vl/Vr)
disp(angle,"the angle between current and source voltage is (in degree)")
