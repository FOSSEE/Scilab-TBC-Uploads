clc;
//page no 8-58
//Example 8.18
Q=100;
IF=455;//in kHz
fs=1000;//in kHz
fsi=fs+(2*IF);
disp(+'kHz',fsi,'fsi=');
rho=(fsi/fs)-(fs/fsi);
alpha=sqrt(1+(Q^2*rho^2));
disp(alpha,'Rejection ratio=');
