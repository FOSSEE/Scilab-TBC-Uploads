syms s t
q=poly([1 0.4],'s','coeff');
q=poly([0 0.6 1],'s','coeff');
G=p/q       //gain FACTOR=k
H=1
T=1/(1+G*H)       
R=1/s
C=R*T;
disp(C)
c=ilaplace(C,s,t)
disp(c, " c = ")

omegaN=sqrt(1)           //comparing denominator with standard form
disp(omegaN,"omegaN = ")
zeta=1/(2*omegaN)
disp(zeta,"zeta=")
omegaD=omegaN*sqrt(1-zeta^2)
disp(omegaD,"omegaD = ")
theta=atan(sqrt(1-zeta^2)/zeta)

disp((%pi-theta)/omegaD," Tr = ")
Tp=%pi/omegaD
disp(Tp," Tp = ")
disp(%e^(-%pi*zeta/sqrt(1-zeta^2))," Mp = ")
disp(4/(zeta*omegaN)," Ts = ")
