Mp=16.2
Tp=%pi/(5*sqrt(3))
zeta=0.5

omegaD=%pi/Tp
omegaN=omegaD/(sqrt(1-zeta^2))
disp(omegaD,"omegaD = ")
disp(omegaN,"omegaN = ")

disp(omegaN*(sqrt(1-2*zeta^2)), " omegaR = ")
disp(1/(2*zeta*sqrt(1-zeta^2))," Mr = ")

