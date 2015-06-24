// Calculate the minimum frequency and phase shift
clc;
M=0.95;
tc=1.5*10^-3;
w=(1/tc)*[(M^2)/(1-M^2)]^0.5;
disp(w,'minimum frequency (rad/s)')
ph={(%pi/2)-[atan(w*tc)]}*(180/%pi);
disp(ph,'phase shift(deg)')