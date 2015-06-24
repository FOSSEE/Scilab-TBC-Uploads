clc
I=0.62; //kg/m^2
N1=2500; //rpm
w1=2*%pi*N1/60; //rad/s
m=1.9; //kg;  Water equivalent of shaft bearings
cp=4.18;
T0=293; //K
t0=20; //0C

disp("(i)Rise in temperature of bearings")
KE=1/2*I*w1^2/1000; //kJ
dT=KE/(m*cp); //rise in temperature of bearings
disp("dT=")
disp(dT)
disp("0C")

t2=t0+dT;
disp("Final temperature of the bearings =")
disp(t2)
disp("0C")

T2=t2+273;

disp("(ii)Final r.p.m. of the flywheel")
AE=integrate('m*cp*(1-T0/T)', 'T', T0, T2);
UE=KE - AE;

disp("Available energy =")
disp(AE)
disp("kJ")

UAE=KE-AE;
disp("Unavailable energy =")
disp(UAE)
disp("kJ")

w2=sqrt(AE*10^3*2/I);
N2=w2*60/2/%pi;
disp("Final rpm of the flywheel =")
disp(N2)
disp("rpm")