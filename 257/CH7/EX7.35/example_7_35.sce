K=33;
B=15;
M=3

T=1/(M*s^2+B*s+K)

omegaN=sqrt(11)           //comparing denominator with standard form
disp(omegaN,"omegaN = ")
zeta=5/(2*omegaN)
disp(zeta,"zeta=")
disp(%e^(-%pi*zeta/sqrt(1-zeta^2))," Mp = ")
omegaD=omegaN*(sqrt(1-zeta^2))
Tp=%pi/omegaD
disp(Tp," Tp = ")
disp(4/(zeta*omegaN)," Ts = ")

