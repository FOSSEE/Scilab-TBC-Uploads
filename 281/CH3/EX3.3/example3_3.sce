disp('chapter 3 ex3.3')
disp('given')
disp('RL=1kohms')
disp('voltage follower VL=5volt')
disp('supply voltage Vcc=15volt')
disp('IL=VL/RL')
RL=1000
VL=5
IL=VL/RL
disp('amperes',IL)
disp('V1=Vcc-VL')
Vcc=15
V1=Vcc-VL
disp('volt',V1)
disp('R1=V1/IL')
R1=V1/IL
disp('ohms',R1)
disp('RL changes by -10%')
disp('VL=Vcc*(RL-.10)/(R1+(RL-.10))')
VL=Vcc*(RL-.10)/(R1+(RL-.10))
disp('volt',VL)
disp('V2=VL=5volts')
V2=5
VL=5
disp('V1=Vcc-VL')
V1=Vcc-VL
disp('volt',V1)
disp('IBmax=500nA and I2=100*IBmax')
disp('R2=V2/I2')
IBmax=500*10^(-9)
I2=100*IBmax
R2=V2/I2
disp('ohms',R2)
disp('R1=V1/I2')
R1=V1/I2
disp('ohms',R1)