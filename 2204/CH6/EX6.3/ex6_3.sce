// Exa 6.3
clc;
clear;
close;
// Given data
R3 = 6;// in k ohm
R4 = 2;// in k ohm
A = 1+(R3/R4);
if A>3 then
    disp("The circuit will work as the oscillator")
end
R = 5.1;// in k ohm
R = R * 10^3;// in ohm
C = 0.001;// in µF
C = C * 10^-6;// in F
f = 1/(2*%pi*R*C);// in Hz
f = f * 10^-3;// in kHz
disp(f,"The frequency of oscillations in kHz is");
