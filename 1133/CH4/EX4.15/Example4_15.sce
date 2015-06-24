//Example 4.15.
clc
format(6)
disp("For a Wien bridge oscillator,")
disp("  f = 1 / 2*pi*R*C")
fm=(1/(2*%pi*(100*10^3)*(50*10^-12)))*10^-3  // in kHz
disp(fm,"Therefore,  f_max(in kHz) =")
fmi=(1/(2*%pi*(100*10^3)*(500*10^-12)))*10^-3
disp(fmi,"and  f_min(in kHz) =")
fn=31.83+50
disp(fn,"Now  f_new(in kHz) = f_max + 50*10^3 =")
disp("The corresponding R = R'' with an additional resistance R_x in parallel")
disp("Therefore,  f = 1 / 2*pi*R''*C")
r=(1/(2*%pi*(50*10^-12)*(81.83*10^3)))*10^-3  // in k-ohm
disp(r,"Therefore,  R''(in k-ohm) =")
rx=1/((1/38.89)-(1/100))  // in k-ohm
disp("Therefore,  R'' = R*R_x / R+R_x")
disp(rx,"Therefore,  R_x(in k-ohm) =               in parallel with 100 k-ohm")
