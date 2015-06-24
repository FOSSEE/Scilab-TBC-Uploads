disp('chapter 3 ex3.4')
disp('given')
disp('signal amplitude Vi=15mV')
disp('IBmax=500nA and I2=100*IBmax')
Vi=.015
IBmax=500*10^(-9)
I2=100*IBmax
disp('R3=Vi/I2')
R3=Vi/I2
disp('ohms',R3)
disp('standard value resistor for R3=270ohms')
R3=270
disp('I2=Vi/R3')
I2=Vi/R3
disp('amperes',I2)
disp('Vo=Av*Vi')
Av=66
Vo=Av*Vi
disp('volt',Vo)
disp('R2=Vo/I2-R3')
R2=Vo/I2-R3
disp('ohms',R2)
disp('standard value resistor to give Av>66 R2=18kohms')
R2=18000
disp('R1=R2||R3')
R1=R2*R3/(R2+R3)
disp('ohms',R1)
disp('standard value resistor R1=270ohms')
R1=270
disp('ohms',R1)