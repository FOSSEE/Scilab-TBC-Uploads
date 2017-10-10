clc;
//page no 8-64
//Example 8.25
fi=450;//in kHz
Q=65;
disp("For incoming frequency of 1200kHz");
fs=1200;//in kHz
fsi=fs+(2*fi);
disp(+'kHz',fsi,'Image frequency is');
P=(fsi/fs)-(fs/fsi);
P1=1.178;
alpha=sqrt(1+(Q^2*P^2));
disp(alpha,'Image frequency rejection ratio is');
//Answer given in book was wrong
disp("For incoming frequency of 20MHz");
fs1=20000;//in kHz
fsi1=fs1+(2*fi);
disp(+'kHz',fsi1,'Image frequency is');
rho=(fsi1/fs1)-(fs1/fsi1);
alpha1=sqrt(1+(Q^2*rho^2));
disp(alpha1,'Image frequency rejection ratio is')
