Mp=30               //given
Ts=5
zeta=0.358

omegaN=4/(zeta*Ts)
disp(omegaN,"omegaN = ")

omegaD=omegaN*(sqrt(1-zeta^2))
Tp=%pi/omegaD
disp(Tp," Tp = ")

TF=omegaN^2/(s^2+2*zeta*omegaN*s+omegaN^2)
disp(TF, "transfer function = ")

theta=atan(sqrt(1-zeta^2)/zeta)
disp(theta," theta = ")
c=(((1-(%e^(-zeta*omegaN*t))/sqrt(1-zeta^2)*sin(omegaD*t+theta))))
disp(c," c = ")