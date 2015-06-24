disp('chapter 3 ex3.6')
disp('given')
disp('standard value of resistor R1=15kohms')
disp('Av=66')
disp('typical parameters M=100000 and Zi=10^(12)')
disp('Zin=(1+M/Av)*Zi')
R1=15000
Av=66
Zi=10^(12)
M=100000
Zin=(1+M/Av)*Zi
disp('ohms',Zin)
disp('Z1in=R1+Zin')
Z1in=R1+Zin
disp('ohms',Z1in)