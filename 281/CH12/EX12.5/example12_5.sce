disp('chapter 12 ex12.5')
disp('given')
disp("voltage regulator in 12.2 to have short circuit o/p current=60mA")
Isc=.06
disp("R6=0.5/Isc")
R6=0.5/Isc
disp('ohms',R6)
disp("Let Ic3=5mA")
Ic3=.005
disp("R7=Vs/Ic3")
disp("Vs=16")
Vs=16
R7=Vs/Ic3
disp('ohms',R7)
disp("Ib1max=Ilmax/hfe1   Ilmax=50mA  hfe1=50")
hfe1=50
Ilmax=.05
Ib1max=Ilmax/hfe1
disp('amperes',Ib1max)
disp("Vr7=1mA*R7")
Vr7=.001*3300
disp('volts',Vr7)
disp("yhis volatage drop is too large for circuit to operate satisfactorily")
disp("to overcome we make use of darlington pair ")
disp("hfe2=50")
hfe2=50
disp("Ib2max=Ilmax/(hfe1*hfe2)")
Ib2max=Ilmax/(hfe1*hfe2)
disp('amperes',Ib2max)
disp("under normal operating conditions Vr7=Ib2max*R7")
Vr7=Ib2max*3300
disp('volts',Vr7)
