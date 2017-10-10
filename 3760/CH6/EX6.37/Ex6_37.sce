clc;
P=20000; // rated power of induction motor
v=400; // rated voltage of motor
f=50;  // frequency
m=3; // number of phases
p=4; // number of poles
r1=0.2; // stator resistance
x=0.45; // stator/rotor leakage reactance
xm=18; // magnetising reactance
s=0.04; // slip
pg=P/(1-s); // air gap power
pr=s*pg; // rotor copper loss
vp=v/sqrt(3); // per phase voltage
ve=(vp*xm)/(x+xm); // Thevenin  voltage
re=(r1*xm)/(x+xm); // Thevenin resistance
xe=(x*xm)/(x+xm); // Thevenin reactance
// using Thevenin's theorrm and rotor copper loss expression we get a quadratic equation in r2 (rotor resistance) whose terms are
t1=pr/s^2; 
t2=((2*pr*re)/s)-(m*ve^2);
t3=pr*((xe+x)^2+re^2);
t=[ t1 t2 t3];
r2=roots(t);
disp('case a');
ws=(4*%pi*f)/p; // synchronous speed
Tm=(m*ve^2)/(ws*2*(re+sqrt(re^2+(x+xe)^2)));
printf('Maximum internal torque is %f Nm\n',Tm);
Ti=(m*ve^2*r2(1))/(ws*((re+r2(1))^2+(x+xe)^2));
printf('Initial starting torque is %f Nm\n',Ti);
disp('case b');
sm=r2(1)/(sqrt(re^2+(xe+x)^2));
printf('Slip at maximum torque is %f ',sm);
