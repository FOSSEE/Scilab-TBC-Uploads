disp('chapter 11 ex11.10')
disp('given')
disp('design a bandpass filter using 741 op-amp')
disp('the center frequency fo=1kHz and pass band is to be +or-33Hz on each side')
disp('B=33+33=66')
fo=1000
B=66
disp('Q=fo/B')
Q=fo/B
disp(Q)
disp('R2=R3=120kohm')
R2=120000
disp('C=2*Q/(2*%pi*fo*R2)')
C=2*Q/(2*%pi*fo*R2)
disp('farads',C)
disp('C1=C2=C=0.0403*10^(-6)F')
disp('R1=R2/2')
R1=R2/2
disp('ohms',R1)    //use 60.4kohm+or-1% standard value
disp('R4=R1/(2*Q*Q-1)')
R4=R1/(2*Q*Q-1)
disp('ohms',R4)