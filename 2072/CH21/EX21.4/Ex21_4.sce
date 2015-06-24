//Example 21.4
clc;
R=250//in ohm
Xc=758//in ohm
Xl=226//in Ohm
X=Xl-Xc
V_max=150//in Volt
Z=sqrt(R^2+X^2)
I=V_max/Z
q=atand(X/R)
disp(Z,"Impedence in ohm")
disp(I,"Current in Amps")
disp(q,"Angle in degree=")
V_R=I*R
V_C=I*Xc
V_L=I*Xl
disp(V_R,"Voltage at Resistance in Volt")
disp(V_L,"Voltage at Inductance in Volt")
disp(V_C,"Voltage at Capacitance in Volt")

