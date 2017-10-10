clc;
tr=2.5; // ratio of maximum torque to full load torque
sm=0.18; // maximum slip
r=1; // per phase rotor resistance
x2=r/sm; // rotor reactance
// using expression for tr we obtain a quadratic equation is s(full load slip) whose terms are
t1=1;
t2=-tr*2*sm; 
t3=sm^2;
t=[ t1 t2 t3 ];
s=roots(t);
x=sqrt((2*x2)/(((r/s(2))^2+x2^2)*s(2))); 
printf('Minimum voltage that could be impressed so that motor can supply rated torque is %f times rated voltage or %f percent of rated voltage\n',x,x*100);
// from expression for maximum torque and full load torque we get a quadratic equation in R(externall resistance) whose terms are
t1=1;
t2=2-2*x2;
t3=1+x2^2-2*x2; 
t=[ t1 t2 t3 ];
R=roots(t);
printf('External resistance inserted in rotor circuit is %f ohms\n',R(2));
