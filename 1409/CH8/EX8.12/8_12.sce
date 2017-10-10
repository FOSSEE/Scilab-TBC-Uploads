clc;
//page no 8-51
//Example 8.12
fi=455*10^3;//in Hz
fsi=2000*10^3;//in Hz
Q=50;
fs=[(fsi-(2*fi))/1000];//in kHz
disp(+'kHz',fs,'Signal frequency is ');
rho=(fsi/[fs*10^3])-([fs*10^3]/fsi);
disp(rho,'rho=');
alpha=sqrt(1+(Q^2*rho^2));
disp(alpha,'Image frequency ratio is ');

