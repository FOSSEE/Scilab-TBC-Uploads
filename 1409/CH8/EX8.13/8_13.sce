clc;
//page no 8-52
//Example 8.13
fs=1500*10^3;//in Hz
fi=455*10^3;//in Hz
alpha=75;
fsi=[fs+(2*fi)]*10^(-3);
disp(+'kHz',fsi,'Image frequency is ');
rho=([fsi*10^3]/fs)-(fs/[fsi*10^3]);
//Rounding of rho to 0.984
rho1=0.984;
//We know that image frequency is given as alpha=sqrt(1+Q^2*rho^2)
//alpha^2-1=Q^2*rho^2
Q=sqrt([alpha^2-1]/rho1^2);
disp(Q,'Q of the tuned circuit is ');
