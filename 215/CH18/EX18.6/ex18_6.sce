clc
syms s t
printf("Given")
disp('v(t)=4*exp(-3*t)*u(t)')
v=4*exp(-3*t)

F=4*(integ(exp(-(3+%i*1)*s),s,0,%inf))
//The secind term tends to zero
disp(F,'F=')
//Let W be the total 1 ohm energy in the input signal
W=integ(v^2,t,0,%inf)
disp(W,'W=')
//Let Wo be the total energy
//As the frequency range is given as 1 Hz<|f|<2 Hz
//Considering symmetry
Wo=(1/%pi)*integ((16/(9+s^2)),s,2*%pi,4*%pi)
disp(Wo,'Wo=')



