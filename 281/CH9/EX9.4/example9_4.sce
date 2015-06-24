disp('chapter 9 ex9.4')
disp('given')
disp('design an noninverting Schmitt trigger circuit to have UTP=+3volt and LTP=-5volt')
disp('using 741 op-amp with a supply of +or-15volt and Vf=0.7volt')
Vcc=15
Vf=0.7
disp('design first for the UTP')
disp('for adequate diode forward current,let I2=500*10^(-6)A')
I2=500*10^(-6)
disp('VR1=UTP=3volt')
VR1=3
disp('R1=VR1/I2')
R1=VR1/I2
disp('ohms',R1)
disp('use 5.6kohm standard value and recalculate I2')
R1=5600
disp('I2=VR1/R1')
I2=VR1/R1
disp('amperes',I2)
disp('VR2=|Vo|-Vf')
VR2=(Vcc-1)-Vf
disp('volts',VR2)
disp('R2=VR2/I2')
R2=VR2/I2
disp('ohms',R2)
disp('use series connected 22kohm and 2.7kohm standard value resistors')
disp('now design for LTP,using already selected resistance R1=5.6kohm')
disp('VR1=LTP=5volt')
VR1=5
disp('I3=VR1/R1')
I3=VR1/R1
disp('amperes',I3)
disp('VR3=|Vo|-Vf')
VR3=(Vcc-1)-Vf
disp('volts',VR3)
disp('R3=VR3/I3')
R3=VR3/I3
disp('ohms',R3)
disp('use 15kohm standard value')
disp('select tha diodes,minimum reverse voltage,Vr>Vcc=15volt')
disp('trr<=min pulse width/10')