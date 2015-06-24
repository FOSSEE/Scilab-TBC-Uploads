disp('chapter 6 ex6.6')
disp('given')
disp("design a linear ohmometer circuit")
disp("Im=100uA and coil resistance=2.5kohm")
Im=100*10^(-6)
Rm=2500
disp("required ohmometer ranges are 100ohm,1kohm,10kohm")
R1=100
R2=1000
R3=10000
disp("design voltmeter of full scale deflection of 1V to keep min power dissipation")
disp("R5=Vrx/Im")
Vrx=1
Vr5=1
R5=Vrx/Im
disp('ohms',R5)
disp("for opamp A2 Vomax=Vr5+ImRm")
Vomax=Vr5+Im*Rm
disp("Vimax=Vrx")
Vimax=Vrx
disp("for current source")
disp("Ix=1/100,1/1000,1/10000")
Ix3=1/100 
disp('amperes',Ix3)
Ix2=1/1000
disp('amperes',Ix2)
Ix1=1/10000
disp('amperes',Ix1)
disp("for p FET  Idmax=10mA  Vdsmax-Vcc")
disp("2N4342 is a suitable device its Vgsoff=5.5v")
Vgsoff=5.5
Vgsmax=Vgsoff
disp("this allows opamp o/p to be atleast 3V below to operate safely")
disp("Vr4min=Vgsoff+3")
Vr4min=Vgsoff+3
disp('volts',Vr4min)
disp("use Vr4=10V std")
Vr4=10
disp("R4=Vr4/Ix for 100uA,1mA,10mA")
R4=Vr4/Ix1
disp('ohms',R4)
R4=Vr4/Ix2
disp('ohms',R4)
R4=Vr4/Ix3
disp('ohms',R4)
disp("for satisfactory operation  Vdsmin=Vgsoff+1")
Vdsmin=Vgsoff+1
disp('volts',Vdsmin)
disp("Vccmin=Vrx+Vdsmin+Vr4")
Vccmin=Vrx+Vdsmin+Vr4
disp('volts',Vccmin)
disp("use Vcc=+-18V")
Vcc=18
disp("for opamp A1")
disp("Vomax=Vcc-Vr4+Vgsmax")
Vomax=Vcc-Vr4+Vgsmax
disp('volts',Vomax)
disp("Vimax=Vcc-Vr4")
Vimax=Vcc-Vr4
disp('volts',Vimax)
disp("for potential divider")
disp("I1>>Ibmax for A1")
disp("I1=50uA")
I1=50*10^(-6)
disp("V(r1+r2)=Vr4+10%")
Vr1r2=Vr4+0.1*Vr4
disp('volts',Vr1r2)
disp("R12=R1+R2=Vr1r2/I1")
R12=Vr1r2/I1
disp("R2=20%  of R1+R2")
R2=0.2*R12
disp('ohms',R2)
disp("use R2=50kohm std value")
R2=50000
disp("R1=R12-R2")
R1=R12-R2
disp('ohms',R1)
disp("use R1=150Kohm std value")
R1=150000
disp("I1=V(r1+r2)/(R1+R2)")
I1=Vr1r2/(R1+R2)
disp('amperes',I1)
disp("R3=(Vcc-V(r1+r2))/I1")
R3=(Vcc-Vr1r2)/I1
disp('ohms',R3)
disp("use 120Kohm std value")


