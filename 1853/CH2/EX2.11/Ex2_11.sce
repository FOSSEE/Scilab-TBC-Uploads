
//calculate the hysteris loss
A=50//area of hysterisis
H=200
B=0.2
f=50
D=10// density
M=1000// mass
V=M/D// velocity is mass /density
HL=A*H*B//.....j/m^2/cycle
HL1=A*H*B*10^-4//....j/cycle
HL2=A*H*B*50*1e-4//....j/s

disp('Hysteresis loop = '+string(HL2)+'   j/s')
