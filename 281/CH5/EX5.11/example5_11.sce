disp('chapter 5 ex5.11')
disp('given')
disp('R1=R3=2.2kohms')
disp('R2=220kohms')
disp('Rs=220ohms')
Rs=220
R1=2200
R3=2200
R2=220000
disp('R=R3+R2||(R1+Rs)')
R=R3+(R2*(R1+Rs)/(R2+R1+Rs))
disp('ohms',R)
disp('f=600kHz')
f=600000
disp('Cs=1/(2*%pi*f*10*R)')
Cs=1/(2*%pi*f*10*R)
disp('farads',Cs)