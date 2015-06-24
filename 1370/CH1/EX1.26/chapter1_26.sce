//example1.26
clc
disp("For d.c. supply frequency is 0 Hz.")
disp("X_C=1/(2*pi*f*C)=1/0=infinity")
disp("So capacitor gives infinite reactance in d.c. supply and acts as an open circuits.")
disp("In an a.c. supply of 100 Hz,")
x=1/(2*%pi*100*50*10^-6)
format(9)
disp(x,"X_C(in ohm)=1/(2*pi*f*C)=")
