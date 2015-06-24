disp('chapter 5 ex5.1')
disp('given')
disp('maximum signal voltage Vs=.5volt')
disp('voltage gain Av=10')
disp('IBmax=1.5*10^(-6)A and I1=100*IBmax')
Vs=.5
Av=10
IBmax=1.5*10^(-6)
I1=100*IBmax
disp('amperes',I1)
disp('R1=Vs/I1')
R1=Vs/I1
disp('ohms',R1)
disp('R2=Av*R1')
R2=Av*R1
disp('ohms',R2)
disp('R3=R1||R2')
R3=R1*R2/(R1+R2)
disp('ohms',R3)