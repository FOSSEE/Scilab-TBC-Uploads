disp('chapter 3 ex3.7')
disp('given')
disp('Designing inverting amplifier using 741 op-amp')
disp('voltage gain Av=50')
disp('output voltage Vo=2.5volt')
Av=50
Vo=2.5
disp('IBmax=500nA and I1=100*IBmax')
IBmax=500*10^(-9)
I1=100*IBmax
disp('V1=Vo/Av')
V1=Vo/Av
disp('volt',V1)
disp('R1=V1/I1')
R1=V1/I1
disp('ohms',R1)
disp('R2=Vo/I1')
R2=Vo/I1
disp('ohms',R2)
disp('R3=R1||R2')
R3=R1*R2/(R2+R1)
disp('ohms',R3)