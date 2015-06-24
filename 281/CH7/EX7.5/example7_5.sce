disp('chapter 7 ex7.5')
disp('given')
disp('Design a dead zone circuit using BIFET op-amp')
disp('voltage of 1volt to pass only in upper portion')
disp('peak voltage Vp=3volt')
Vp=3
disp('Vref=Vp-1')
Vref=Vp-1
disp('volts',Vref)
disp('Ir1min=Idmin=500*10^(-6)')
Ir1min=500*10^(-6)
disp('R1=Vref/Ir1min')
R1=Vref/Ir1min
disp('ohms',R1)
disp('use standard value R1=3.9kohm')
R1=3900
disp('R2=R3=R1=3.9kohm')
R2=3900
R3=3900
disp('R4=R1||R2||R3')
R4=R1*R2*R3/(R1*R2+R2*R3+R3*R1)
disp('ohms',R4)
disp('use 1.2kohm standard value')
disp('select the diodes as in ex7.1 and compensate the op-amp as a voltage follower')