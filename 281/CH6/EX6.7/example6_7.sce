disp('chapter 6 ex6.7')
disp('given')
disp("design a instrument amplifier circuit ")
disp("overall gain=900")
Av=900
disp("i/p  signal amplitude=15mV")
Vi=0.015
disp("Supply voltage=15")
Vcc=15
disp("For stage 1")
disp("Äv1=Av2")
Av1=sqrt(Av)
Av2=Av1
disp(Av1,"Av1=Av2=")
disp("I2>>Ibmax")
disp("Ibmax=500nA")
Ibmax=500*10^(-9)
disp("I2=100*Ibmax")
I2=100*Ibmax
disp('amperes',I2)
disp("R2=Vi/I2")
R2=Vi/I2
disp('ohms',R2)
disp("use R2=270ohms std value")
disp("Avdif=(2R1+R2)/R2")
R2=270
disp("R1=R2(Av1-1)/2")
R1=R2*(Av1-1)/2
disp('ohms',R1)
disp("Use R1=3.9Kohm std value")
R1=3900
disp("R3=R1")
R3=R1
disp("For stage 2")
disp("Vo=Av*Vi")
Vo=Av*Vi
disp('volts',Vo)
disp("I5>>Ibmax")
disp("Ibmax=500nA")
disp("I2=100*Ibmax")
I5=100*Ibmax
disp('amperes',I5)
disp("R5=Vo/I5")
R5=Vo/I5
disp('ohms',R5)
disp("R4=R5/Av2")
R4=R5/Av2
disp('ohms',R4)
disp("R6=R4")
R6=R4
disp("R7=R5+-20%")
R7=R5+0.2*R5
disp('ohms',R7)
R7=R5-0.2*R5
disp('ohms',R7)
disp("use 220kohm fixed resistor and 100kohm resistor variable")





