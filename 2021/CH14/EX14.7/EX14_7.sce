//Finding of Velocity of Prototype
//Given
vm=30;
lm=100;
lp=1;
Am=0.018*10^-4;
Ap=0.012*10^-4;
rho1=1030;
rho2=1.24;
Fm=60;
//To Find
vp=(Ap/Am)*(lp/lm)*vm;
Fp=Fm*(lm/lp)^2*(vp/vm)^2*(rho1/rho2);
disp("Velocity of Prototype ="+string(vp)+" m/sec");
disp("Resistance of Prototype ="+string(Fp)+" Newton");
