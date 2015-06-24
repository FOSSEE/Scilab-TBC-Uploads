disp('chapter 5 ex5.4')
disp('given')
disp('709 op-amp is used design an inverting amplifier')
disp('Vs=50mV')
Vs=50*10^(-3)
disp('voltage gain Av=100')
Av=100
disp('IBmax=2nA and I1=100*IBmax')
IBmax=2*10^(-9)
I1=100*IBmax
disp('amperes',I1)
disp('R1=Vs/I1')
R1=Vs/I1
disp('ohms',R1)
disp('standard value R1=2.2kohms')
R1=2200
disp('R2=Av*R1')
R2=Av*R1
disp('ohms',R2)
disp('R3=R1||R2')
R3=R1*R2/(R1+R2)
disp('ohms',R3)
disp('Av=100=40dB')