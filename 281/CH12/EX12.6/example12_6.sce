disp('chapter 12 ex12.6')
disp('given')
disp("design feedback limit for 12.4 and max circuit o/p current=400mA when limited foldback to 200mA")
Ilmax=0.4
Isc=0.2
disp("Vr6=0.5 at short circuit")
disp("R6=0.5/Isc")
R6=0.5/Isc
disp('ohms',R6)
disp("use 2.7 ohm std value")
R6=2.7
disp("Vr6=Ilmax*R6")
Vr6=Ilmax*R6
disp('volts',Vr6)
disp("Vr8=Vr6-0.5    Vr6=1")
Vr8=1-0.5
disp('volts',Vr8)
disp("Ir8>>Ib3    hfe3=50  Ic3=5mA")
Ic3=0.005
hfe3=50
disp("Ib3=Ic3/hfe3")
Ib3=Ic3/hfe3
disp('amperes',Ib3)
disp("let Ir8=1mA")
Ir8=0.001
disp("R8=Vr8/Ir8")
R8=Vr8/Ir8
disp('ohms',R8)
disp("use 470 ohm std value")
R8=470
disp("using average level of Vo=12.5")
Vo=12.5
disp("R9=(Vo-Vr8)/Ir8")
R9=(Vo-Vr8)/Ir8
disp('ohms',R9)
disp("R7=Vs/Ic3    Vs=19.5")
Vs=19.5
R7=Vs/Ic3
disp('ohms',R7)
disp("hfe2=50    hfe1=20")
hfe2=50
hfe1=20
disp("Ib2max=Ilmax/(hfe1*hfe2)")
Ib2max=Ilmax/(hfe1*hfe2)
disp('amperes',Ib2max)
disp(" Vr7=Ib2max*R7")
Vr7=Ib2max*R7
disp('volts',Vr7)
