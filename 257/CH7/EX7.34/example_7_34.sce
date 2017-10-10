syms s k
q=poly([0 0 1],'s','coeff');
G=100/q //gain FACTOR=100
H=1+k*s
y=G*H 

T=G/(1+G*H)

omegaN=sqrt(100)           //comparing denominator with standard form
disp(omegaN,"omegaN = ")
zeta=100*k/(2*omegaN)
disp(zeta,"zeta=")

Mp=4.32;
zeta=0.7071;
disp(zeta/5," k = ")