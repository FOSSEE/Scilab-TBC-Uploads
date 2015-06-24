disp('chapter 3 ex3.11')
disp('given')
disp('modifying circuit designed in example 3.10')
disp('R1=27kohms and R2=1Mohms')
disp('R3+R4=R1=27kohms')
R1=27000
R2=27000
disp('R4/R3=R2/R1=37')
disp('R3+37R3=27kohms')
R3=27000/(1+37)
disp('ohms',R3)
disp('standard value R3=680ohms')
R3=680
R4=37*R3
disp('ohms',R4)
disp('allowing +10% or-10% adjustments of R4')
disp('total resistance R%=R4+10%')
R5=R4+R4*.10
disp('ohms',R5)
disp('variable portion Rv=20% of R4')
Rv=.20*R5
disp('ohms',Rv)
disp('standard variable resistance is 5kohms')
Rv=5000
disp('ohms',Rv)
disp('fixed portion of R4 is Rf=R4-Rv')
Rf=R5-Rv
disp('ohms',Rf)