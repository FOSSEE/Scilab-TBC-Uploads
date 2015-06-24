disp('chapter 10 ex10.4')
disp('given')
disp('design a wein bridge oscillator to have output frequency of 15kHz')
disp('using BIFET op-amp with a supply of +or-12volt')
Vcc=12
f=15000
disp('select,C=C1=C2=0.01*10^(-6)F')
C=0.01*10^(-6)
disp('R=1/(2*%pi*C*f)')
R=1/(2*%pi*C*f)
disp('ohms',R)
disp('use 1kohm standard value')
R=1000
disp('R1=R2=R=1kohm')
disp('let R4=R2=1kohm')
R4=1000
disp('R3=2*R4')
R3=2*R4
disp('ohms',R3)
disp('use 2.2kohm standard value to give Av>3')