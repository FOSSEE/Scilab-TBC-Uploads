//Ex 2.14 page 76

clc;
clear;
close;

VS=500;// V
IP=250;// A
diBYdt=60;// A/micro-s
dvaBYdt=200;// V/micro-s
RL=20;// ohm
r=0.65;// ohm
eps=0.65 ;// damping ratio

F=2;// saftety factor
IP=IP/2;// A
diBYdt=60/2;// A/micro-s
dvaBYdt=200/2;// V/micro-s
L=VS/diBYdt;// uH
R=L*10**6/VS*dvaBYdt/10**6;// ohm
printf('Value of L = %.2f uH',L)
printf('\n Value of R = %.1f ohm',R)

Ip=VS/RL+VS/R;// A
if Ip > IP then
    printf('\n Value of Ip = %.1f A is greater than permissible peak current = %.1f A\n change the value of Rs',Ip,IP)
    Rs=6;//ohm
end
Ip=VS/RL+VS/Rs;// A
Cs=(2*eps/Rs)**2*L;// micro F
printf('\n Value of C = %.2f micro F',Cs)

//load combination current Cs*dv/dt = Vs/(Rs+RL)

Cs=0.4;// uF (reduced value of Cs)
Rs=6;//ohm
dvBYdt = VS/(Rs+RL)/Cs; // V/micro-s
printf('\n Value of dv/dt = %.1f V micro-s',dvBYdt)
disp('This is less than the specified max. value. Hence the choice is correct.')

//Answer in the textbook is wrong. In last part RL+Rs = 18 is taken in place of 26
