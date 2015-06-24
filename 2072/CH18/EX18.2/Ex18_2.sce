//Example18.2
clc
delta_V=18//in volt
R1=3//in ohm
R2=6//in ohm
R3=9//in ohm
I1=delta_V/R1
I2=delta_V/R2
I3=delta_V/R3
disp("solution a")
disp(I1,"Current in amps=")
disp(I2,"Current in amps=")
disp(I3,"Current in amps=")
P1=(I1^2)*R1
P2=(I2^2)*R2
P3=(I3^2)*R3
disp("solution B")
disp(P1,"Power in watt=")
disp(P2,"Power in watt=")
disp(P3,"Power in watt=")