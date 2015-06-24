disp('chapter 11 ex11.2')
disp('given')
disp('design a first order active low-pass filter to have cutoff frequency 1kHz')
disp('R1=70mV/IBmax')
disp('let IBmax=500*10^(-9)A')
IBmax=500*10^(-9)
R1=70*10^(-3)/IBmax
fc=1000
disp('ohms',R1)
disp('use 120kohm standard value')
disp('R2=R1=120kohm')
R1=120000
R2=120000
disp('Xc1=R1 at fc')
disp('C1=1/(2*%pi*fc*R1)')
C1=1/(2*%pi*fc*R1)
disp('farads',C1)
disp('use 1300pF standard value')