disp('chapter 12 ex12.2')
disp('given')
disp("output =12V")
Vo=12
disp("max load current=50mA")
Il=.05
disp("Vsmin=Vo+3 V")
Vsmin=Vo+3 
disp( 'volts',Vsmin)
disp("allowing Vrs=2V(p to p)")
Vrs=2
disp("Vs=Vsmin+Vrs/2")
Vs=Vsmin+Vrs/2
disp('volts',Vs)
disp("let Vz=Vs/2")
Vz=Vs/2
disp('volts',Vz)
disp("Iz=20mA")
Iz=.02
disp("R1=(Vs-Vz)/Iz")
R1=(Vs-Vz)/Iz
disp('ohms',R1)
disp("R1=390 ohm std value")
R1=390
disp("let I2>>Ibmax     I2=50uA")
I2=50*10^(-6)
disp("R2=(Vo-Vz)/I2")
Vz=8.2
R2=(Vo-Vz)/I2
disp('ohms',R2)
disp("R2=68kohm std value")
R2=68000
disp("I2=(Vo-Vz)/R2")
I2=(Vo-Vz)/R2
disp('amperes',I2)
disp("R3=Vz/Iz")
R3=Vz/I2
disp('ohms',R3)
disp("use 150 k ohm std value")
R3=150000
disp("select C1=50uF")
C1=50*10^(-6)
disp("Q1 specification")
disp("Vcemax=Vsmax=Vs+Vrs/2")
Vcemax=Vs+Vrs/2
disp('volts',Vcemax)
Ie=Il
disp("P=Vce*Il=(Vs-Vo)*Il")
P=(Vs-Vo)*Il
disp('watts',P)
disp("A 2N718 is a suitable device")

