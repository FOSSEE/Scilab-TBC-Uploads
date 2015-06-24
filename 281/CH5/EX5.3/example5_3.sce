disp('chapter 5 ex5.3')
disp('given')
disp('LM108 op-amp is used design an inverting amplifier')
disp('V1=100mV')
V1=100*10^(-3)
disp('voltage gain Av=3')
Av=3
disp('IBmax=2nA and I1=100*IBmax')
IBmax=2*10^(-9)
I1=100*IBmax
disp('amperes',I1)
disp('R1=V1/I1')
R1=V1/I1
disp('ohms',R1)
disp('standard value R1=470kohms')
R1=470000
disp('R2=Av*R1')
R2=Av*R1
disp('ohms',R2)
disp('standard value R2=1.5Mohms')
R2=1.5*10^(6)
disp('R3=R1||R2')
R3=R1*R2/(R1+R2)
disp('ohms',R3)
disp('Cf=30pF*R1/(R1+R2)')
Cf=30*10^(-12)*R1/(R1+R2)
disp('farads',Cf)