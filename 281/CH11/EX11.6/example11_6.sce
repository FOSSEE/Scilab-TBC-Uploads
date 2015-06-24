disp('chapter 11 ex11.6')
disp('given')
disp('design a third order active low-pass filter to have cutoff frequency 30kHz')
fc=30000
disp('-20dB per decade stage(first order)')
disp('select C1=1000pF')
C1=1000*10^(-12)
disp('Xc1=R1 at fc/0.65')
disp('R1=0.65/(2*%pi*fc*C1)')
R1=0.65/(2*%pi*fc*C1)
disp('ohms',R1)   //use 3.4kohm+or-1%standard value
disp('R2=R1=3.4kohm')   //use 3.3kohm standard value
disp('-40dB per decade stage(second order)')
disp('select C3=1000pF')
C3=1000*10^(-12)
disp('Xc3=sqrt(2)*R4 at fc/0.8')
disp('R4=0.8/(2*%pi*fc*sqrt(2)*C3)')
R4=0.8/(2*%pi*fc*sqrt(2)*C3)
disp('ohms',R4)    //use two 5.9kohm+or-1% parallel-connected
disp('C2=2*C3')
C2=2*C3    //standard value
disp('farads',C2)
disp('R3=R4=2.95kohm')
R3=2950
disp('R5=R4+R3')
R5=R4+R3
disp('ohms',R5)   //use 5.6kohm standard value