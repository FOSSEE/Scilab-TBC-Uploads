q=poly([24 5 1],'s','coeff');
G=20/q 
H=1
y=G*H 

omegaN=sqrt(24)           //comparing denominator with standard form
disp(omegaN,"omegaN = ")
zeta=5/(2*omegaN)
disp(zeta,"zeta=")
omegaD=omegaN*sqrt(1-zeta^2)
disp(omegaD,"omegaD = ")
syms t
theta=atan(sqrt(1-zeta^2)/zeta)
disp(20/24*((1-(%e^(-zeta*omegaN*t))/sqrt(1-zeta^2)*sin(omegaD*t+theta))))