disp('chapter 6 ex6.4')
disp('given')
disp("precision current sink to be designed")
disp("constant output current=100mA")
Il=.075
disp("maximum load resistance=50ohms")
Rlmax=50
disp("available supply voltage=+/-15V")
Vcc=15
disp("for 2N222N n-channel MOSFET Vdsmax=60 Idmax=150mA Rdon=7.5ohm")
disp("Vdsmax=Vcc=15")
disp("Idmax=Il=75mA")
Vdsmax=Vcc
Idmax=Il
Rdon=7.5
disp("Vlmax=Il*Rlmax")
Vlmax=Il*Rlmax
disp('volts',Vlmax)
disp("Vdsmin=(Id*Rdon)+1")
Vdsmin=(Il*Rdon)+1
disp('volts',Vdsmin)
disp("Vr5max=Vcc-Vlmax-Vdsmin")
Vr5max=Vcc-Vlmax-Vdsmin
disp('volts',Vr5max)
disp("R5=Vr5/Il")
R5=Vr5max/Il
disp('ohms',R5)
disp("use R5=120ohms std value")
R5=120
Vr5=Il*R5
disp('volts',Vr5)
disp("remaining component calculation is same as for ex 6.2")
