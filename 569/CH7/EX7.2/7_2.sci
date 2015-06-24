// calculating resolution 
clc;
N = 3;
R=1/10^N;
disp(R,'Resolution of the meter=');
disp('12.98 will be displayed as 12.980 on 10V scale')
VR=1;
R1=VR*R;
disp(R1,'Resolution of the meter for voltage range 1V=');
disp('0.6973 will be displayed as 0.6973 on 1V scale')
VR1=10;
R2=VR1*R;
disp(R2,'Resolution of the meter for voltage range 10V=');
disp('0.6973 will be displayed as 00.697 on 10V scale')