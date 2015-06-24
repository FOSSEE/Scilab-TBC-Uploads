disp('chapter 12 ex12.8')
disp('given')
disp("voltage regulator to have o/p voltage=9V")
Vo=9
disp("I1>>(Iadj=100uA)")
disp("Let I1=5mA")
I1=0.005
disp("R1=Vref/I1   Vref=1.25V")
Vref=1.25
R1=Vref/I1
disp('ohms',R1)
disp("use 270ohm std value and recalculate I1")
R1=270
disp("I1=Vref/R1")
I1=Vref/R1
disp('amperes',I1)
disp("R2=(Vo-Vr1)/I1, Vr1=1.25")
Vr1=1.25
R2=(Vo-Vr1)/I1
disp('ohms',R2)
disp("use 1.5kohm and 220 ohm in series")
