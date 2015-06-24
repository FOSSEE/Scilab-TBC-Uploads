disp('chapter 7 ex7.3')
disp('given')
disp('Design a high input impedance precision full-wave rectifier circuit')
disp('input peak value Vi=1volt')
Vi=1
disp('supply voltage Vcc=+or-15volt')  //(using bipolar op-amp)
Vcc=15
disp('let I6=500*10^(-6)A')  //for adequate diode current
I6=500*10^(-6)
disp('R6=Vi/I6')
R6=Vi/I6
disp('ohms',R6)
disp('use 1.8kohm standard value')
R6=1800
disp('R4=R5=R6=1.8kohm')  //standard value
R4=1800
R5=1800
disp('R3=2*R4')
R3=2*R4
disp('ohms',R3)  //use two 1.8kohm resistors in series
disp('R1=R3||R4')
R1=R3*R4/(R3+R4)
disp('ohms',R1)   //standard value
disp('R2=R6||R5')
R2=R6*R5/(R6+R5) 
disp('ohms',R2)   //use 1kohm standard value
disp('compensate the op-amps for Av1=2 and A2 as a voltage follower')