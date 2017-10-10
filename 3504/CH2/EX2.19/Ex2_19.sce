//To write the KVL equation and obtain the voltage across the capacitor C for the given parameters.
clc;
Z=[5-%i*5  5+%i*3;5+%i*3  10+%i*6]
D=det(Z)
Z_1=[10  5+%i*3;10-%i*10  10+%i*6]
D_1=det(Z_1)
I_1=D_1/D
V=I_1*(-%i*10)
disp(V,'Voltage across the capacitor C(Volts)')
