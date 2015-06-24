disp('chapter 3 ex3.5')
disp('given')
disp('Redesigning the noninverting amplifier in example 3.4 using LF353 BIFET op-amp')
disp('IBmax=200pA and I2=100*IBmax')
disp('let R2=1Mohms and Av=66')
R2=1*10^(6)
Av=66
disp('R3=R2/(Av-1)')
R3=R2/(Av-1)
disp('ohms',R3)
disp('standard value resistor R3=15kohms will give Av>66')
R3=15000
disp('ohms',R3)
disp('R1=R2||R3')
R1=R2*R3/(R2+R3)
disp('ohms',R1)
disp('standard value R1=15kohms')
R1=15000
disp('ohms',R1)