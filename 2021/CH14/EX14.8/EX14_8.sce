//Finding of Velocity of Model
//Given
vp=20;
lm=1;
lp=15;
rho1=1024;
rho2=1000;
Fp=600;
Fm=0.12;
//To Find
vm=sqrt(lm/lp)*vp;
Fp=Fm*(lm/lp)^2*(vp/vm)^2*(rho1/rho2);
disp("Velocity of Prototype ="+string(vm)+" m/sec");
disp("Resistance of Prototype ="+string(Fp)+" Newton");
