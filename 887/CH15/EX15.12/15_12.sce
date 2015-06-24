clc
//ex15.12
V_s=1000*complex(cos(0),sin(0));      //source voltage phasor
R_1=10^3;
tr=10;      //turns ratio(N1/N2)
V_S=V_s/tr;      //reflected voltage
[V_S_max,V_S_phi]=polar(V_S);
R1=R_1/(tr^2);      //reflected resistance
//we take real parts of angles to take out neglegible and unnecessary imaginary parts(if any are there)
disp('Reflected voltage:')
disp(V_S_max,'Peak value in volts')
disp(V_S_phi*180/%pi,'phase angle in degrees')
disp(R1,'Reflected resistance in ohms')
