Syms t,s 
disp('given')
disp('V=e^-t(sint)              R1=1,R2=1,C=0.5,L=2')
disp('laplace transforming the ckt elements')
disp('Total impedance is')
z=((2*s^2+5*s+4)/(2*s^2+s+2))
disp(z)
disp('laplace transformed voltage is')
v=laplace('%e^(-t)*sin(2*t)',t,s)
disp(v)
disp('The current can be found as v/z')
i=v/z
disp(i,"The total current in s domain")
