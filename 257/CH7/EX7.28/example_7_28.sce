q=poly([0 2 1],'s','coeff');
G=8/q 
H=1

omegaN=sqrt(8)
zeta=2/(2*omegaN)
disp(omegaN,"omegaN = ")
disp(zeta,"zeta = ")

syms s a
T=8/(s^2+s*(2+8*a)+8)
disp((0.7*2*sqrt(8)-2)/8, " a for zeta=0.7 is ")
disp(%e^(-%pi*zeta/sqrt(1-zeta^2))," Mp for zeta=0.3535 is  ")


