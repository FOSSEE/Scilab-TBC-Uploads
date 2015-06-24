//Finding of velocity , discharge of prototype
//Given
qm=2;
vm=1.5;
lp=36;
lm=1;
//To Find
vp=sqrt(lp/lm)*vm;
qp=(lp/lm)^2*(vp/vm)*qm;
disp("Velocity of Prototype ="+string(vp)+" m/sec");
disp("Dischage of Prototype ="+string(qp)+" m^3/sec");
