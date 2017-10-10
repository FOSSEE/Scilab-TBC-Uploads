clc;
fs=0.05; // full load slip
ir=6; // ratio of starting current and full load current
t=1; // ratio of starting torque to full load torque
x=sqrt(t/((ir^2)*fs)); 
printf('Tapping point is at %f percent\n',x*100); 
is=x^2*ir; 
printf('Starting current is %f times full load current\n',is); 
