
//calculate the induced emf per phase
f=50
P=16
N=160
S=6
n=N*S
Z=n/3
F=0.025
e=2.22*F*f*Z
disp('e='+string(e)+'volts')
