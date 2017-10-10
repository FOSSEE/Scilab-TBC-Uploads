q=poly([0 20 1],'s','coeff');
G=400/q //gain FACTOR=k
H=1
T=G/(1+G*H) 

omegaN=sqrt(400)
zeta=20/(2*omegaN)
disp(omegaN,"omegaN = ")
disp(zeta,"zeta = ")
omegaD=omegaN*sqrt(1-zeta^2)
theta= atan(sqrt(1-zeta^2)/zeta)
disp(theta,"theta = ")

syms s t
c=(1-(%e^(-zeta*omegaN*t))/sqrt(1-zeta^2)*sin(omegaD*t+theta))
disp(c, " c = ")

Kv=limit(s*G*H,s,0)
disp(Kv, " Kv = ")
Ess=1/Kv
disp(Ess, " Ess = ")
