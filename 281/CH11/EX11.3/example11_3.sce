disp('chapter 11 ex11.3')
disp('given')
disp('design a second order low-pass filter to have cutoff frequency 1kHz')
disp('the frequency response of 741 extends to 800kHz when its voltage gain is 1 so 741op-amp is suitable')
disp('R1+R2=70mV/IBmax')
disp('R4=R1+R2')
disp('let IBmax=500*10^(-9)A')
IBmax=500*10^(-9)
R4=70*10^(-3)/IBmax
fc=1000
disp('ohms',R4)
disp('R2=R1=70kohm')
disp('use 68kohm standard value')
R1=68000
R2=68000
disp('R3=R1+R2')
R3=R1+R2
disp('ohms',R3)
disp('use 150kohm standard value')
disp('Xc1=sqrt(2)*R2 at fc')
disp('C1=1/(2*%pi*fc*sqrt(2)*R2)')
C1=1/(2*%pi*fc*sqrt(2)*R2)
disp('farads',C1)
disp('use 1600pF standard value')
C1=1600*10^(-12)
disp('C2=2*C1')
C2=2*C1
disp('farads',C2)