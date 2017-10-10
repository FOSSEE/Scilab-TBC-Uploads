clc;
//page no 8-62
//Example 8.23
Q=125;
fi=465;//in kHz
disp("Image frequencies and rejection at 1MHz");
fs=1000;//in kHz
fsi=[fs+(2*fi)]*10^-3;
disp(+'MHz',fsi,'Image frequency is');
rho=(fsi/(fs*10^-3))-((fs*10^-3)/fsi);
disp(rho,'rho=');
alpha=sqrt(1+(Q^2*rho^2));
//rounding alpha to 176.48
alpha1=176.48;
alphadB=20*log10(alpha1);
disp(+'dB',alphadB,'Image frequency rejection ratio is');
disp("Image frequencies and rejection at 30MHz")
fs1=30;//in MHz
fsi1=fs1+(2*fi*10^-3);
disp(+'MHz',fsi1,'Image frequency is');
rho1=(fsi1/fs1)-(fs1/fsi1);
disp(rho1,'rho=');
alpha2=sqrt(1+(Q^2*rho1^2));
alphadB1=20*log10(alpha2);
disp(+'dB',alphadB1,'Image frequency rejection ratio is');
