//Calculate the value of time constant,phase shift, series resistance, amplitude ratio and voltage sensitivity
clc;
M=0.95;
w=2*%pi*20;
tc=(1/w)*[(M^2)/(1-M^2)]^0.5;
disp(tc,'time constant (s)')
ph={(%pi/2)-[atan(w*tc)]}*(180/%pi);
disp(ph,'phase shift(deg)')
C=(8.85*10^-12*300*10^-6)/(0.125*10^-3);
R=tc/C;
disp(R,'series resistance (ohm)')
M=1/(1+(1/(2*%pi*5*tc)^2))^0.5;
disp(M,'amplitude ratio=')
Eb=100;
x=0.125*10^-3;
Vs=Eb/x;
disp(Vs,'voltage sensitivity (V/m)')

