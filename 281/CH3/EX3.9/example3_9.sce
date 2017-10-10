disp('chapter 3 ex3.9')
disp('given')
disp('the direct sum of two inputs which range from .1Volt to 1V0lt')
Vsmin=0.1
Vsmax=1
disp('IBmax=500nA')
disp('I1min=100*IBmax')
IBmax=500*10^(-9)
I1min=100*IBmax
disp('amperes',I1min)
disp('R1=Vsmin/I1min') 
R1=Vsmin/I1min
disp('ohms',R1)
disp('using standard value R2=R1=1.8kohms')
R1=1800
R2=1800
disp('for Av=1 R3=R1=1.8kohms')
Av=1
R3=1800
disp('R4=R1||R2||R3')
R4=R1/3
disp('ohms',R4)
disp('standard value is 560ohms')