disp('chapter 5 ex5.16')
disp('given')
disp('calculating R4 and C4 for high Zin Mod for ex 5.4')
disp('assuming R3 is a short circuit')
disp('circuit is designed to have Av=1/beta')
beta=0.01
Av=1/beta
disp(Av,'Av=')
Avindb=20*log10(Av)
disp(Avindb,'Av in db=')
disp('to reduce next compensating components select 1/beta1=1000=60db')
disp('1/beta1=((r1||r4)+r2)/(r1||r4)')
disp('r2=220kohms,r1=2.2kohm')
disp('r14=r1||r4=r2/(1000-1)')
r2=220000
r1=2200
r14=r2/(1000-1)
disp('ohms',r14)
disp('(1/r4)=(1/220)-(1/r1)')
g4=(1/r14)-(1/r1)
r4=1/g4
disp('ohms',r4)
disp('use 220ohm std value')
r4=220
disp('the compensating components for 1/beta1=60db are c1=10pf,r1=0,c2=3pf')
c1=10*10^(-12)
c2=3*10^(-12)
r1=0
disp('the frequency at which M*beta=1 is found and is equal to 2MHz')
f2=2000000
disp('Xc4<<r4 therefore Xc4=r4/10')
Xc4=r4/10
disp('ohms',Xc4)
disp('C4=1/(2*%pi*f2*Xc4)')
C4=1/(2*%pi*f2*Xc4)
disp('farads',C4)
