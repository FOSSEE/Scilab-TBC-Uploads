clc
//initialisation of variables
r=14//in
r1=1.8//in
t=30.4//lb
e=0.6//lb
lam=1.4
d=12//in
d1=18//in
v=10000//C.H.U/lb
P=200//r m p
//CALCULATIONS
A=1-(1/(lam*(r)^0.4))*((r1)^lam-1)/(r1-1)//percent
T=e*A//percent
H=t/60*v//C.H.U
H1=H*T//C.H.U
I=(H1*1400)/(33000)//ln/in^2
M=(I*33000)/(2*%pi*144/4*d1/12*P/2)//lb/in^2
//RESULTS
printf('the indicated hourse-power and the mean effiective pressure of the engine=% flb/in^2',M)
