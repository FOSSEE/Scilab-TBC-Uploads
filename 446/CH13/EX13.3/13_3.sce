clear
clc
disp('Exa-13.3(a)')
v=1.5*1.5*2.5*(10^-6)*10^2; //volume in cm3
p=8.9;         //density in g/cm3
m=p*v;Na=6.023*10^23 //mass and Avagadro's number
M=58.9;        //Given values
N=m*Na/M;
i=12*10^-6;       //thickness of beam
q=1.6*10^-19;
Io=i/(2*q);      //intensity
s=0.64*10^-24;   //Given values
S=1.5*1.5;
R=N*s*Io/S;       //rate of production of 61Cu
printf('The rate of neutrons emitted from the target is %.2e particles/second\n',R);
disp('Exa-13.3(b)')
act=R*(1-(%e^((0.693)*(-2/3.41))));          //activity
printf('The activity after 2.0h is %e/sec',act);
