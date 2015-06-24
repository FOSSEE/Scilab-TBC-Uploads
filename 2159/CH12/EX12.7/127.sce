// problem 12.7
sp=25*(10^6)
H=40
no=0.9
P=25*1000
g=9.81
u1=2*(sqrt(2*g*H))
Vf1=0.6*(sqrt(2*g*H))
w=9810
Q=sp/(w*no*H)
De=(Q*4/(3.142*Vf1*(1-(0.35^2))))^0.5
Db=0.35*De
N=u1*60/(3.142*De)
Ns=N*(P^0.5)/(H^1.25)
disp(Ns,N,Db,De,"diameter of runner and boss, speed and specific speed of runner in r.p.m")
