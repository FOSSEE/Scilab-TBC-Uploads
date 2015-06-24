disp('chapter 10 ex10.2')
disp('given')
disp('design a phase shift oscillator to have output frequency of 3.5kHz')
disp('using 741 op-amp with a supply of +or-12volt')
Vcc=12
f=3500
disp('I1>IBmax')
disp('let I1=50*10^(-6)A')
IBmax=500*10^(-9)
I1=50*10^(-6)
disp('Vo=+or-(Vcc-1)')
Vo=Vcc-1
disp('volts',Vo)
disp('R2=Vo/I1')
R2=Vo/I1
disp('ohms',R2)   //standard value
disp('let Av=29')
Av=29
disp('R1=R2/Av')
R1=R2/Av
disp('ohms',R1)
disp('use 6.8kohm to give Av>29')
R1=6800
disp('R=R1=6.8kohm')
R=6800
disp('C=1/(2*%pi*R*f*sqrt(6))')
C=1/(2*%pi*R*f*sqrt(6))
disp('farads',C)     //use 2700pF standard value