disp('chapter 3 ex3.8')
disp('given')
disp('Redesigning the inverting amplifier in example 3.7 using LF353 BIFET op-amp')
disp('let R2=1Mohms and Av=50')
R2=1*10^(6)
Av=50
disp('R1=R2/Av')
R1=R2/Av
disp('ohms',R1)
disp('R3=R1||R2')
R3=R1*R2/(R1+R2)
disp('ohms',R3)