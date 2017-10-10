disp('chapter 6 ex6.3')
disp('given')
disp("current souurce to be designed")
disp("constant output current=100mA")
Il=.1
disp("maximum load resistance=40ohms")
Rlmax=40
disp("available supply voltage=+/-12V")
Vcc=12
disp("for P MOSFET Vdsmax=100 Idmax=210mA Rdon=5")
Vdsmax=100 
Idmax=0.210
Rdon=5
disp("Vdsmax=Vcc=12")
disp("Idmax=Il=100mA")
Vdsmax=Vcc
Idmax=Il
disp("Vlmax=Il*Rlmax")
Vlmax=Il*Rlmax
disp('volts',Vlmax)
disp("Vdsmin=(Id*Rdon)+1")
Vdsmin=(Il*Rdon)+1
disp('volts',Vdsmin)
disp("Vr1(max)=Vcc-Vlmax-Vdsmin")
Vrlmax=Vcc-Vlmax-Vdsmin
disp('volts',Vrlmax)
disp("R1=Vr1/Il")
R1=Vr1max/Il
disp('ohms',R1)
disp("use R1=56ohms std value")
R1=56
disp("Vr1=Il*R1")
Vr1=Il*R1
disp('volts',Vr1)