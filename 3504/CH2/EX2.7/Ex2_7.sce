//To calculate the power delivered by the source in the given circuit.
clc;
Z=[3+%i*1 -%i -2;-%i 2+%i*3 -%i*2;-2 %i*2 3+%i*1]
D=det(Z)
Z_1=[15.7 -%i -2;0 2+%i*3 -%i*2;0 %i*2 3+%i*1]
D_1=det(Z_1)
V_1=D_1/D
//Power delivered =V_1*I*cos(theta)=Real(V_1*I),which on simplification equals 100 watts.
