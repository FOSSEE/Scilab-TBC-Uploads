disp('chapter 9 ex9.5')
disp('given')
disp('for circuit designed in ex 9.4 calculate the actual UTP and LTP using standard resistance values')
disp('using 741 op-amp with a supply of +or-15volt,Vf=0.7volt,R1=5.6kohm,R2=22kohm+2.7kohm and R3=15kohm')
Vcc=15
Vf=0.7
R1=5600
R2=24700
R3=15000
disp('I2=(|Vo|-Vf)/R2')
I2=((Vcc-1)-Vf)/R2
disp('amperes',I2)
disp('UTP=I2*R1')
UTP=I2*R1
disp('volts',UTP)
disp('I3=(|Vo|-Vf)/R3')
I3=((Vcc-1)-Vf)/R3
disp('amperes',I3)
disp('LTP=-I3*R1')
LTP=-I3*R1
disp('volts',LTP)