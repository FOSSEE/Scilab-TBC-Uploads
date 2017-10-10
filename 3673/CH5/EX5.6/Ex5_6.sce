//Example 5_6 page no:196
clc
V=50;
R=10;//resistance in ohm
L=0.5;//inductance in henry
C=10*10^-6//capacitance in farad
f=50//frequency in Hz
Xc=1/(2*3.14*f*C)
Xl=2*3.14*f*L
Z=sqrt(R^2+(Xl-Xc)^2)
disp(Z,"the impedence is (in ohm)")
I=V/Z
disp(I,"current is (in A)")
angle=atand((Xl-Xc)/R)
disp(angle,"the phase angle is (in degree)")
Vr=I*R
disp(Vr,"voltage across resistor is (in volt)")
Vc=I*Xc
disp(Vc,"voltage across capacitive reactance is (in volt)")//current is round of to 0.3A in our case it is 0.309 so the result is more approximated in textbook
disp("in textbook the current is roundoff so the voltage is more approximated")
Vl=I*Xl
disp(Vl,"voltage across inductive reactance is (in volt)")//current is round of to 0.3 in our case it is 0.309 so the result is more approximated in textbook
disp("in textbook the current is roundoff so the voltage is more approximated")
