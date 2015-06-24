disp('chapter 6 ex6.2')
disp('given')
disp("precision voltage souurce to be designed")
disp("constant output voltage=9V")
Vo=9
disp("available supply voltage=+/-12V")
Vcc=12
disp("allow 10% tolerance on zener diode")
disp("Vz=Vo/2")
Vz=Vo/2
disp('volts',Vz)
disp("assuming Vz=4.3V")
Vz=4.3
disp("diode current is Iz=20mA")
Iz=.02
disp("R1=(Vo-Vz)/Iz")
R1=(Vo-Vz)/Iz
disp('ohms',R1)
disp("assuming standard value for R1=220")
R1=220
disp("for R2,R3,R4  I2>>Ibmax")
disp("Ibmax=500nA")
Ibmax=500*10^(-9)
disp("I2=100*Ibmax")
I2=100*Ibmax
disp('amperes',I2)
disp("let R34=R3+R4")
disp("R34=(Vz+0.1*Vz)/I2")
R34=(Vz+0.1*Vz)/I2
disp('ohms',R34)
disp("R4=20% 0f (R3+R4)")
R4=.2*R34
disp('ohms',R4)
disp("Use 20 Kohms std value")
R4=20000
disp("R3=R34-R4")
R3=R34-R4
disp('ohms',R3)
disp("use R3=68Kohms std value")
R3=68000
disp("I2=(Vz+0.1*Vz)/(R3+R4)")
I2=(Vz+0.1*Vz)/(R3+R4)
disp('amperes',I2)
disp("R2=(Vo-(Vr3+Vr4))/I2")
R2=(Vo-(Vz+0.1*Vz))/I2
disp('ohms',R2)

