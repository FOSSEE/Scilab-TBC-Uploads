clc;
//page no 8-57
//Example 8.17
fo=1010;//in kHz
fs=555;//in kHz
Q=40;
fi=fo-fs;
disp(+'kHz',fi,'Intermediate frequency is ');
fsi=fs+(2*fi);
disp(+'kHz',fsi,'Image frequency is ');
rho=(fsi/fs)-(fs/fsi);
alpha=sqrt(1+(Q^2*rho^2));
disp(alpha,'Image frequency rejection ratio is ');
