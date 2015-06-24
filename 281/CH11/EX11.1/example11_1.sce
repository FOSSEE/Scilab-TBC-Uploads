disp('chapter 11 ex11.1')
disp('given')
disp('design an all-pass circuit to have phase lag from 80degree to100degree')
disp('using a 741op-amp the input signal  has a 1volt amplitude and a 5kHz frequency')
Vi=1
f=5000
disp('I1>IBmax')
disp('let I1=50*10^(-6)A')
IBmax=500*10^(-9)
I1=50*10^(-6)
disp('R1=Vi/I1')
R1=Vi/I1
disp('ohms',R1)
disp('use 18kohm standard value')
R1=18000
disp('R2=R1=18kohm')
R2=18000
disp('R3=R1||R2')
R3=R1*R2/(R1+R2)
disp('ohms',R3)
disp('for a 90degree phase shift,Xc1=R3')
disp('C1=1/(2*%pi*f*R3)')
C1=1/(2*%pi*f*R3)
disp('farads',C1)
disp('use 3600pF standard value')
C1=3600*10^(-12)
disp('for a 80degree phase shift,R3=tan(theta1/2)/(w*C1)')
theta1=80
R3=tan(theta1*%pi/180/2)/(2*%pi*f*C1)
disp('ohms',R3)
disp('for a 100degree phase shift,R3=tan(theta2/2)/(w*C1)')
theta2=100
R3=tan(theta2*%pi/180/2)/(2*%pi*f*C1)
disp('ohms',R3)
disp('for R3,use a 6.8kohm fixed value resistor in series with a 5kohm variable resistor to give a total resistance adjustable from 6.8kohm to 11.8kohm')