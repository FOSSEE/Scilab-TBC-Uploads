disp('chapter 9 ex9.3')
disp('given')
disp('design an inverting Schmitt trigger circuit to have trigger points of +or-2volt')
disp('using 741 op-amp with a supply of +or-12volt')
disp('I2>IBmax')
disp('let I2=50*10^(-6)A')
IBmax=500*10^(-9)
I2=50*10^(-6)
Vcc=12
disp('VR2=UTP=2volt')
VR2=2
disp('R2=VR2/I2')
R2=VR2/I2
disp('ohms',R2)
disp('use 39kohm standard value and recalculate I2')
R2=39000
disp('I2=VR2/R2')
I2=VR2/R2
disp('amperes',I2)
disp('VR1=Vosat-VR2=(Vcc-1)-VR2')
VR1=(Vcc-1)-VR2
disp('volt',VR1)
disp('R1=VR1/I2')
R1=VR1/I2
disp('ohms',R1)
disp('use 180kohm standard value')