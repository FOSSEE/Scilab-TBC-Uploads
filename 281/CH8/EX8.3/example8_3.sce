disp('chapter 8 ex8.3')
disp('given')
disp('Design an integrating circuit to produce a triangular output wave form')
disp('peak to peak amplitude of v=4volt') //(using a BIFET op-amp)
v=4
disp('The input voltage Vi=+or-5volt square wave with frequency of 500Hz')
Vi=5
f=500
disp('C1>stray capacitance')
disp('let C1=.1*10^(-6)F')    //(standard value)
C1=.1*10^(-6)
disp('t=T/2=1/(2*f)')
t=1/(2*f)
disp('seconds',t)
disp('I1=C1*v/t')
I1=C1*v/t
disp('Amperes',I1)
disp('R1=Vi/I1')
R1=Vi/I1
disp('ohms',R1)       //(use a 12kohm standard value with a 470ohm connected in series)
disp('R2=20*R1')
R2=20*R1
disp('ohms',R2)                //(use a 270kohm standard value)
disp('R3=R1=12.5kohm')   //(use a 12kohm standard value)