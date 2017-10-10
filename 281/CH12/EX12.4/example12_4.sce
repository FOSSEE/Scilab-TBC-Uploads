disp('chapter 12 ex12.4')
disp('given')
disp("output =10V to 15V")
Vomax=15
disp("max load current=4000mA")
Il=.4
disp("Vsmin=Vomax+3 V")
Vsmin=Vomax+3 
disp('volts',Vsmin)
disp("allowing Vrs=3V(p to p)")
Vrs=3
disp("Vs=Vsmin+Vrs/2")
Vs=Vsmin+Vrs/2
disp('volts',Vs)
disp("ZENER CIRCUIT")
disp("let Vz=Vo/2")
Vz=Vomax/2
disp('volts',Vz)
disp("Iz=20mA")
Iz=.02
disp("R1=(Vo-Vz)/Iz")
R1=(Vomax-Vz)/Iz
disp('ohms',R1)
disp("R1=330 ohm std value")
R1=390
disp("POTENTIAL DIVIDER")
disp("let I2&gt;&gt;Ibmax     I2=50uA Vomin=10")
I2=50*10^(-6)
Vomin=10
disp("R2=(Vomin-Vz)/I2")
Vz=7.5
R2=(Vomin-Vz)/I2
disp('ohms',R2)
disp("R2=47kohm std value")
R2=47000
disp("I2=(Vomin-Vz)/R2")
I2=(Vomin-Vz)/R2
disp('amperes',I2)
disp("R34=R3+R4=Vz/Iz")
R34=Vz/I2
disp('ohms',R34)
disp("when Vo is at its max,moving contact is at bottom of R4")
disp("I2=Vomax/(R2+R34)")
I2=Vomax/(R2+R34)
disp('amperes',I2)
disp("R3=Vz/Iz")
R3=Vz/I2
disp('ohms',R3)
disp("use 100 k ohm std value")
R3=100000
disp("R4=(R3+R4)-R3")
R4=R34-R3
disp('ohms',R4)
disp("use 50 k ohm std value")
disp("CAPACITOR")
disp("select C1=100uF")
C1=100*10^(-6)
disp("Q1 specification")
disp("Vcemax=Vsmax=Vs+Vrs/2")
Vcemax=Vs+Vrs/2
disp('volts',Vcemax)
Ie=Il
disp("P=Vce*Il=(Vs-Vomin)*Il")
P=(Vs-Vomin)*Il
disp('watts',P)
disp("A 2N3055 is a suitable device")
disp("Q2 specification")
disp("Vcemax=Vsmax=Vs+Vrs/2")
Vcemax=Vs+Vrs/2
disp('volts',Vcemax)
disp("Ie=Il/hFE1 ,hFE1=20 for Q1")
hFE1=20
Ie=Il/hFE1
disp('amperes',Ie)
disp("P=Vce*Il=(Vs-Vomin)*Il")
P=(Vs-Vomin)*Il
disp('watts',P)
disp("A 2N3904 is a suitable device")
disp("R5 Calculation")
disp("let Ie2min=0.5mA,Vbe1=0.7")
Ie2min=0.5*10^(-3)
Vbe1=0.7
disp("R5=(Vomin+Vbe1)/Ie2min")
R5=(Vomin+Vbe1)/Ie2min
disp('ohms',R5)
disp("R5=18kohm std value")
disp("OPERATIONAL AMPLIFIER")
disp("because I2 is sselected for bipolar opamp either a bipolar or BIFEt opamp can be used")
disp("supply voltage Vs=19.5V")
Vs=19.5
disp("Input supply voltage range=Vs/2-Vz")
ipvoltage=(Vs/2)-Vz
disp('volts',ipvoltage)