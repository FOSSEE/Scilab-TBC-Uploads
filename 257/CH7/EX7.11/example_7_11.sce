syms s
TF=8/(s^2+4*s+8)

Mp=25               //given

omegaN=sqrt(8)
disp(omegaN,"omegaN = ")
zeta=4/(2*omegaN)
disp(zeta,"zeta = ")
omegaD=omegaN*(sqrt(1-zeta^2))
Tp=%pi/omegaD
disp(Tp," Tp = ")
disp(%e^(-%pi*zeta/sqrt(1-zeta^2))," Mp = ")
disp(4/(zeta*omegaN)," Ts = ")

