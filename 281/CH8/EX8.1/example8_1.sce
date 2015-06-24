disp('chapter 8 ex8.1')
disp('given')
disp('Design a differentiating circuit')
disp('output voltage Vo=5volt')
Vo=5
disp('input changes by 1volt in a time of 100*10^(-6)')
v=1
t=100*10^(-6)
disp('let I1>IBmax')
disp('I1=500*10^(-6)')
I1=500*10^(-6)
disp('R2=Vo/I1')
R2=Vo/I1
disp('ohms',R2)
disp('C1=I1*t/v')
C1=I1*t/v
disp('farads',C1)
disp('R1=R2/20')
R1=R2/20
disp('ohms',R1)
disp('use standard value R1=470ohm')
R1=470
disp('ohms',R1)
disp('R3=R2=10kohm')
disp('Vcc>=+or-(Vo+3Volt)')
Vcc=Vo+3
disp('volts',Vcc)
disp('compensate the op-amp for Av=R2/R1')
Av=R2/R1
disp(Av)