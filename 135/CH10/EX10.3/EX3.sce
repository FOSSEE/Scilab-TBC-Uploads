// Example 10.3: CS, Zero frequency
clc, clear
gm=1e-3; // in mho
fL=10; // in hertz
// From Fig. 10.10
RS=6e3; // in ohms
I=RS/(1+RS*gm); // Impedance seen by CS in ohms
CS=1/(2*%pi*fL*I); // in farads
CS=CS*1e6; // in micro-farads
disp(CS,"CS (µF) =");
disp("Here at f = 0 Hz, CS has infinite reactance.");
disp("Therefore, zero frequency fzero = 0 Hz here, i.e. the voltage transfer function is zero at DC.");