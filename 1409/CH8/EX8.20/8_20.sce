clc;
//page no 8-60
//Example 8.20
fo=1126;//in kHz
fs=670;//in kHz
V=68;//in micro volts
Q=50;
fi=fo-fs;
disp(+'kHz',fi,'Frequency of the other station fi=');
//Log alpha=20/20
alpha=10^1;
rho=sqrt((alpha^2-1)/Q^2)
disp(rho,'rho=');
//rho=(fsi/fs)-(fs/fsi);
//fsi=fs+2*fi; fs+2*456
//rho=[(fs+912)/fs]-[fs/(fs+912)]
//0.199=[(fs+912)/fs]-[fs/(fs+912)]
//Solving for fs, we get
fs=8500;//in kHz
S=V/alpha;
disp(+'micro Volt',S,'Strength of the signal=');
