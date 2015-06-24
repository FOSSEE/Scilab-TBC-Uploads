disp('chapter 6 ex6.5')
disp('given')
disp("design of half wave rectifier")
disp("rms input=1V")
Vi=1
disp("average meter curent 100uA with a resistnce coil 2.5 K is connected")
Iav=100*10^(-6)
Rm=2500
disp("for HWR Ip=2*Iav/0.637")
Ip=2*Iav/0.637
disp('amperes',Ip)
disp("Ip occurs when i/p voltage is at Vp")
disp("Vp=1.414*Vi")
Vp=1.414*Vi
disp('volts',Vp)
disp("R2=Vp/Ip")
R2=Vp/Ip
disp('ohms',R2)
disp("use R2=3.9 Kohm std value and 1Kohm variable in series")
disp("For Opamp")
disp("Vd1=0.7")
Vd1=0.7
disp("opamp voltage range Vomax=Vd1+Ip*(Rm+R2)")
Vomax=Vd1+Ip*(Rm+R2)
disp('volts',Vomax)
disp("input voltage range Vimax=1,414V(peak)")
disp("Upper cutoff frequency=1KHz")
disp("For LM108")
disp("supply voltage can be Vcc=+/-5V to +/-20V")
disp("R1=1Mohm")
R1=1000000
disp("C1=1/(2*%pi*fl*(R1/10))")
fl=10
C1=1/(2*%pi*fl*(R1/10))
disp('farads',C1)
disp("for diodes")
disp("Irmax=Ip=314uA  and  F(max)>1KHz")