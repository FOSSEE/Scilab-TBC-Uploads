s = %s;
G = poly([-3+%i*7 -3-%i*7 ],'s','roots');
K = poly([-3+%i*7],'s','roots')
disp(1/G);;
k = plzr(1/G);
t = roots(K);
Wn = abs(t);
disp(Wn,"natural frequency=");
theta = atan(imag(t)/real(t));
disp(theta,"phase =");
zeta = cos(theta);disp(zeta,"damping ratio =");
Tp = %pi/(Wn*sqrt(1-zeta^2));
disp(Tp,"Peak time =");
Os = 100*%e^((-%pi*zeta)/sqrt(1-zeta^2));
disp(Os,"percentage overshoot =");
Ts = 4/abs(real(t));
disp(Ts,"settling time with 2% tolerance =");