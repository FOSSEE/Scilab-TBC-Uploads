q=poly([0 10 1],'s','coeff');
G=k/q 
H=1
T=G/(1+G*H) 

zeta=0.5
k=100/(4*zeta^2)
disp(k," k = ")

omegaN=sqrt(k)
disp(omegaN,"omegaN = ")
Ts=4/(zeta*omegaN)
disp(Ts," Ts = ")
omegaD=omegaN*(sqrt(1-zeta^2))
Tp=%pi/omegaD
disp(Tp," Tp = ")
disp(%e^(-%pi*zeta/sqrt(1-zeta^2))," Mp = ")