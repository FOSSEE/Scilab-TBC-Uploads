clear
clc
disp('Ex-13.1')
v=1*1*10^-6*10^2; p=7.9; m=p*v;Na=6.023*10^23     //given values and various constants in suitable units
M=56;N=m*Na/M;                                 //number of atoms
i=3*10^-6;
q=1.6*10^-19;
Io=i/q;                 //intensity
s=0.6*10^-24;S=1;             //given values in suitable units
R=N*s*Io/S;                     //rate of neutrons
printf('The rate of neutrons emitted from the target is %.2e particles per second',R);