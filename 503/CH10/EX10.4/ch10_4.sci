//to determine value of capacitor

clc;
f=50;
w=2*%pi*f;
Z_lm=complex(3,2.7);
Z_la=complex(7,3);
I_m=(-1)*atand(imag(Z_lm)/imag(Z_la));
a=90;
I_a=a+I_m;
c=1/(w*(real(Z_lm)-real(Z_la)*tand((-1)*I_a)));
disp(c,'value of capacitor(F)');