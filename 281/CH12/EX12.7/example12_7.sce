disp('chapter 12 ex12.7')
disp('given')
disp("voltage regulator to have o/p voltage=18V")
Vo=18
disp("I2>>error amplifier input bias current")
disp("Let I2=1mA")
I2=0.001
disp("Vr2=Vref=7.15")
Vr2=7.15
Vref=7.15
disp("R2=Vref/I2")
R2=Vref/I2
disp('ohms',R2)
disp("use 6.8 kohm std value")
R2=6800
disp("I2=7.15/6.8k")
I2=7.15/6800
disp('amperes',I2)
disp("R1=(Vo-Vr2)/I2")
R1=(Vo-Vr2)/I2
disp('ohms',R1)
disp("use 10 kohm std value")
R1=10000
disp("for satisfactory operatiom of series pass transistor")
disp("Let Vs-Vo=5V   Vs=Vo+5  ")
Vs=Vo+5
disp('volts',Vs)
disp("Inteernal circuit current is approximately ")
disp("I=Istandby+Iref=25mA")
I=0.025
disp("Internal power dissipation excluding series pass transistor ")
disp("Pi=(Istandby+Iref)*Vs")
Pi=(I)*Vs
disp('watts',Pi)
disp("Maximum power dissipated in series pass transistor")
disp("P=(specified Pdmax)-Pi    Pdmax=1000mW")
Pdmax=1
P=Pdmax-Pi
disp('watts',P)
disp("Maximum load current=P/(Vs-Vo)")
Ilmax=P/(Vs-Vo)
disp('amperes',Ilmax)
