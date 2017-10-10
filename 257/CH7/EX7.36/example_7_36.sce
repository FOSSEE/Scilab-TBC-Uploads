ss=%s
G=64/(s*(s+9.6))
H=1
T=G/(1+G*H)

omegaN=sqrt(64)
disp(omegaN,"omegaN = ")
zeta=9.6/(2*omegaN)
disp(zeta,"zeta = ")
omegaD=omegaN*(sqrt(1-zeta^2))
theta=atan(sqrt(1-zeta^2)/zeta)
disp(theta," theta = ")

c=((1-(%e^(-zeta*omegaN*t))/sqrt(1-zeta^2)*sin(omegaD*t+theta)))
disp(c, "c = ")

Tp=%pi/omegaD
disp(Tp," Tp = ")
disp(4/(zeta*omegaN)," Ts = ")

