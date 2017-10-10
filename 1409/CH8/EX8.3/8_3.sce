clc;
//page no 8-9
//Example 8.3
disp("at 1000kHz");
Q=80;
fi=455*10^3;//in Hz
fs=1000*10^3;//in Hz
fsi=[fs+(2*fi)]*10^(-3);
disp(+'kHz',fsi,'fsi=');
rho=[(fsi*10^3)/fs]-[fs/(fsi*10^3)];
disp(rho,'rho=');
//Rounding rho to 3 digits
rho1=1.386;
alpha=sqrt(1+(Q^2*rho1^2));
disp(alpha,'Rejection ratio is');
disp("at 50MHz");
fs2=50*10^6;
fsi2=(fs2+2*fi)*10^(-6);
disp(+'MHz',fsi2,'fsi=');
rho2=[(fsi2*10^6)/fs2]-[fs2/(fsi2*10^6)];
disp(rho2,'rho=');
//rounding rho2 to 0.036
rho3=0.036;
alpha2=sqrt(1+(Q^2*rho3^2));
disp(alpha2,'Rejection ratio is');

