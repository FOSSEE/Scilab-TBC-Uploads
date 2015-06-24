disp('chapter 11 ex11.7')
disp('given')
disp('design a third order active high-pass filter to have cutoff frequency 20kHz')
fc=20000
disp('-20dB per decade stage(first order)')
disp('let R1=120kohm')
R1=120000
disp('Xc1=R1 at 0.65*fc')
disp('C1=1/(2*%pi*0.65*fc*R1)')
C1=1/(2*%pi*0.65*fc*R1)
disp('farads',C1)
disp('this is so small that it can be affected by stray capacitance and redesign selecting C1')
disp('select C1=1000pF')
C1=1000*10^(-12)
disp('R1=1/(2*%pi*0.65*fc*C1)')
R1=1/(2*%pi*0.65*fc*C1)
disp('ohms',R1)   //use 12kohm standard value
disp('R2=R1=12kohm')
disp('-40dB per decade stage(second order)')
disp('select C3=1000pF')
C3=1000*10^(-12)
disp('R4=sqrt(2)*Xc3 at 0.8*fc')
disp('R4=sqrt(2)/(2*%pi*0.8*fc**C3)')
R4=sqrt(2)/(2*%pi*0.8*fc*C3)
disp('ohms',R4)   //use 14kohm+or-1% standard value
disp('C2=C3=1000pF')
disp('R3=R4/2')
R3=R4/2
disp('ohms',R3)  //use 6.98kohm standard value
disp('R5=R4=14.06kohm')   //use 15kohm standard value