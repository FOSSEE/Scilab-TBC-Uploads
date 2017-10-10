//Example 5_2 page no:193
clc
R=1*10^3//resistance in ohm
L=50*10^-3//inductance in henry
V=10
f=10*10^3//frequency in Hz
Xl=2*%pi*f*L
Z=R+(%i*Xl)
Z=sqrt(R^2+Xl^2)
disp(Z,"impedence is (in ohm)")
I=V/Z
I=I*1000//converting to milli ampere
disp(I,"current is (in mA)")
angle=atand(Xl/R)
disp(angle,"the phase angle is (in degree)")
Vr=I*10^-3*R//current in milli ampere
disp(Vr,"Voltage across resistance is (in volts)")
Vl=I*10^-3*Xl//current in milli ampere
disp(Vl,"Voltage across inductive reactance is (in volts)")
//the values varies slightly with text book hence values are rounded off in text book
