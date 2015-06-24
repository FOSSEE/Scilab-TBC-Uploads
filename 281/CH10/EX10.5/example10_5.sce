disp('chapter 10 ex10.5')
disp('given')
disp('design a signal generator output stage to afford output amplitude from +or-0.1 to 5volt')
Vomin=0.1
Vomax=5
disp('dc voltage level control over a range of +or-2.5volt')
disp('signal applied output stage has a +or-1volt amplitude and frequency ranging from 50Hz to 20kHz')
Vi=1
fmin=50
fmax=20000
VR4=2.5-(-2.5)
disp('using a bipolar op-amp with a +or-15volt supply')
Vcc=15
disp('I1>IBmax')
disp('let I1=50*10^(-6)A')
IBmax=500*10^(-9)
I1=50*10^(-6)
disp('R1=Vi/I1')
R1=Vi/I1
disp('ohms',R1)
disp('use 18kohm standard value')
R1=18000
disp('R2max=Vomax/Vi*R1')
R2max=Vomax/Vi*R1
disp('ohms',R2max)
disp('R2min=Vomin/Vi*R1')
R2min=Vomin/Vi*R1
disp('ohms',R2min)
disp('for R2,use a 100kohm potentiometer in series with a 1.8kohm resistor')
disp('I3>IBmax')
disp('let I3=50*10^(-6)A')
I3=50*10^(-6)
disp('R4=VR4/I3')
R4=VR4/I3
disp('ohms',R4)    //standard potentiometer
disp('R3=VR3/I3')
VR3=Vcc-2.5
R3=VR3/I3
disp('ohms',R3)
disp('use 220kohm to give larger output adjustment than required')
disp('R5=R3=220kohm')
disp('Xc1<R1 at fmin')
disp('let Xc1=R1/10 at fmin')
disp('C1=1/(2*%pi*fmin*R1/10)')
C1=1/(2*%pi*fmin*R1/10)
disp('farads',C1)   //standard value