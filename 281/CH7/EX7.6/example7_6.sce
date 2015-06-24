disp('chapter 7 ex7.6')
disp('given')
disp('Design a precision clipping circuit to clip 100kHz sine wave')
disp('Vref for A1=3volt')
disp('Vref for A2=-3volt')
Vref=3
disp('Ir1min>IBmin for op-amps')
disp('let Ir1min=500*10^(-6)A')  //adequate diode current
Ir1=500*10^(-6)
disp('R1=Vref/Ir1')
R1=Vref/Ir1
disp('ohms',R1)
disp('use 5.6kohm standard value')
R1=5600
disp('R2=R3=R1=5.6kohm')
R2=5600
R3=5600
disp('R4=R1||R2||R3')
R4=R1*R2*R3/(R1*R2+R2*R3+R3*R1)
disp('ohms',R4)
disp('use 1.8kohm standard value')
disp('R11=R22=R33=R1=5.6kohm')
disp('R44=R4=1.8kohm')
disp('R5=R6=R7=R8=R1=5.6kohm')
R5=5600
R6=5600
R7=5600
R8=5600
disp('R9=R5||R6||R7||R8')
R9=R5*R6*R7*R8/(R5*R6*R7+R5*R6*R8+R5*R7*R8+R6*R7*R8)
disp('ohms',R9)   //use 1.5kohm standard value
disp('select the diodes as in ex7.1 and compensate A1 and A2 as a voltage follower')
disp('compensate A3 for Av=(R8+(R5||R6||R7))/R5||R6||R7')
Av=(R8+(R5*R6*R7/(R5*R6+R6*R7+R7*R5)))/(R5*R6*R7/(R5*R6+R6*R7+R7*R5))
disp(Av)