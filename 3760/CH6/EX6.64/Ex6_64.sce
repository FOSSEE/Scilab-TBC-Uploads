clc;
v=3300; // rated voltage of induction motor
p=6; // number of poles
f=50; // frequency
t=3.2; // stator to rotor turns
r=0.1; // rotor resistance
x=1; // rotor leakage reactance
R=t^2*r; // rotor resistance referred to stator
X=t^2*x; // rotor reactance referred to stator
ws=(4*%pi*f)/p; // synchronous speed
disp('case a');
is=(v/sqrt(3))/(sqrt(R^2+X^2)); 
printf('Starting current at rated voltage is %f A\n',is);
Ts=(3*is^2*R)/ws; 
printf('Starting torque at rated voltage is %f Nm\n',Ts);
disp('case b');
is=50; // starting current
// is=Vp/(sqrt((R+rex)^2+X^2) where rex is external resistance and Vp is phase voltage
// solving above equation we get a quadratic equation in rex whose terms are
t1=1;
t2=2*R; 
t3=(R^2+X^2)-((v/sqrt(3))/is)^2;
p=[ t1 t2 t3 ];
rex=roots(p);  
printf('External resistance referred to rotor is %f ohms\n',rex(2)/t^2);
Ts=(3*is^2*(R+rex(2)))/ws; 
printf('Starting torque under new condition is %f Nm\n',Ts);

