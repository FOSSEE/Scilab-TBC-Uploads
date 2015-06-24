//Example 15.2.
clc
format(6)
disp("To find the range over which capacitance is to be varied")
disp("Frequency of oscillation of Hartley oscillator is")
disp("       fo = 1 / 2*pi*sqrt((L1-L2)*C)")
disp("Therfore,  C = 1 / 4*pi^2*(L1+L2)*fo^2")
disp("When fo = 950 kHz")
C=1/(4*(%pi^2)*((2*10^-3)+(20*10^-6))*((950*10^3)^2)) //farady
x1=C*10^12 //pF
disp(x1,"           C(pF) =")
disp("When fo = 2050 kHz")
C=1/(4*(%pi^2)*((2*10^-3)+(20*10^-6))*((2050*10^3)^2)) //farady
x1=C*10^12 //pF
format(5)
disp(x1,"           C(pF) =")
disp("Hence, the range of capacitance is from 2.98 pF to 13.89 pF")