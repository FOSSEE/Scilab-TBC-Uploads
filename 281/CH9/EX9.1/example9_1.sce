disp('chapter 9 ex9.1')
disp('given')
disp('design a suitable circuit using 741 op-amp with a supply of +or-12volt')
disp('capacitor coupled zero crossing detector to handle 1kHz square wave input with peak-to-peak amplitude of 6volt')
Vi=6
f=1000
Vcc=12
disp('I2>IBmax')
disp('let I2=100*500nA')
IBmax=500*10^(-9)
I2=100*500*10^(-9)
disp('let Vb=0.1volt')
Vb=0.1
disp('VR2=Vcc-Vb')
VR2=Vcc-Vb
disp('volts',VR2)
disp('R2=VR2/I2')
R2=VR2/I2
disp('ohms',R2)
disp('use 220kohm standard value and recalculate I2')
R2=220000
disp('I2=VR2/R2')
I2=VR2/R2
disp('amperes',I2)
disp('VR3=Vb=0.1volt')
VR3=0.1
disp('R3=VR3/I2')
R3=VR3/I2
disp('ohms',R3)   //use a 1.8kohm standard value
disp('let VBE=0.7volt')
VBE=0.7
disp('R1=0.1*VBE/IBmax')
R1=0.1*VBE/IBmax
disp('ohms',R1)
disp('use R1=120kohm standard value')
R1=120000
disp('Vi(peak)=Vi/2')
Vipeak=Vi/2
disp('volts',Vipeak)
disp('I1=Vipeak/R1')
I1=Vipeak/R1
disp('amperes',I1)
disp('let v=1volt')
v=1
disp('t=1/(2*f)')
t=1/(2*f)
disp('seconds',t)
disp('C1=I1*t/v')
C1=I1*t/v 
disp('farads',C1) 
disp('use a 0.015*10^(-6)F standard value to give v<1volt')
