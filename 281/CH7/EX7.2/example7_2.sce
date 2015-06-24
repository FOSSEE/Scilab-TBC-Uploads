disp('chapter 7 ex7.2')
disp('given')
disp('Design a precision full-wave rectifier circuit')
disp('peak output Vo=2volt')
Vo=2
disp('input peak value Vi=.5volt')
Vi=0.5
disp('frequency f=1MHz')
f=1*10^(6)
disp('supply voltage Vcc=+or-15volt')  //(using bipolar op-amp)
Vcc=15
disp('I1>IBmax')
disp('let I1=500*10^(-6)A')  //for adequate diode current
I1=500*10^(-6)
disp('R1=Vi/I1')
R1=Vi/I1
disp('ohms',R1)   //standard value
disp('R2=2*R1')
R2=2*R1 
disp('ohms',R2)   //use two 1kohm resistors in series
disp('R3=R1||R2')
R3=R1*R2/(R1+R2)
disp('ohms',R3)   //use 680ohm standard value
disp('R4=R5=R1=1kohm')
R4=1000
R5=1000
disp('for the output tobe 2volt when the input is 0.5volt')
disp('R6=Vo/Vi*R5')
R6=Vo/Vi*R5
disp('ohms',R6)
disp('use standard value R6=3.9kohm')
R6=3900
disp('R7=R4||R5||R6')
R7=R4*R5*R6/(R4*R5+R5*R6+R6*R4)
disp('ohms',R7) //use 470ohm standard value
disp('For diode D1 and D2,Vr>30volt and trrmax=0.1microsec as in ex7.1')
disp('Compensate A1 as a voltage follower')
disp('A2 for gain of R6+R4||R5/(R4||R5)')
A2=(R6+(R4*R5/(R4+R5)))/(R4*R5/(R4+R5))
disp(A2)