// Calculate the maximum allowable time constant and phase shift
clc;
M=1-0.05;
w=2*%pi*100;
tc={[(1/M^2)-1]/(w^2)}^0.5;
disp(tc,'maximum allowable time constant (s)')
disp('phase shift at 50 Hz (degree)=')
ph=[-atan(2*%pi*50*tc)]*(180/%pi);
disp(ph,'')
disp('phase shift at 100 Hz (degree)=')
ph=[-atan(2*%pi*100*tc)]*(180/%pi);
disp(ph,)