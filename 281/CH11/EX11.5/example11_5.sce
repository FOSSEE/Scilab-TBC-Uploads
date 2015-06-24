disp('chapter 11 ex11.5')
disp('given')
disp('design a second order high-pass filter to have cutoff frequency 12kHz')
disp('from 715 data sheet,IBmax=1.5*10^(-6)A')
fc=12000
IBmax=1.5*10^(-6)
disp('R2=70mV/IBmax')
R2=70*10^(-3)/IBmax
disp('ohms',R2)
disp('R1=R2/2')
R1=R2/2
disp('ohms',R1)
disp('use 22kohm and 1.5kohm in series')
disp('R3=R2=47kohm')
R3=47000
R2=47000
disp('R2=sqrt(2)*Xc2 at fc')
disp('C2=1/(2*%pi*fc*R2/sqrt(2))')
C2=1/(2*%pi*fc*R2/sqrt(2))
disp('farads',C2)
disp('use 390pF standard value')
disp('C1=C2=390pF')
disp('from 715 data sheet the op-amp unity gain cutoff frequency is fu=11MHz')
Av=1
fu=11*10^(6)
disp('f2=fu/Av')
f2=fu/Av
disp('Hz',f2)