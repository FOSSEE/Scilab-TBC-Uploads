//ex16.4
R1=10*10^3;
R2=33*10^3;
R3=10*10^3;
C=0.01*10^-6;
f_r=(1/(4*R1*C))*(R2/R3);
disp(f_r,'frequency of oscillation in hertz')
//the value of R1 when frequency of oscillation is 20 kHz
f=20*10^3;
R1=(1/(4*f*C))*(R2/R3);
disp(R1,'value of R1 in ohms to make frequency 20 kiloHertz')