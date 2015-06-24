//exmaple1.20
clc
disp("P=6, Z=780, E_g=500V, N=1000 rpm")
disp("a) Lap wound,  A=P=6")
disp("(E_g)=(psi*P*N*Z)/(60*A)   i.e.   500=(psi*6*1000*780)/(60*6)")
s=(500*60*6)/(6*1000*780)
format(8)
disp(s,"Therefore,  psi(in Wb)=")
disp("b) Wave wound,  A=2")
disp("(E_g)=(psi*P*N*Z)/(60*A)   i.e.   500=(psi*6*1000*780)/(60*2)")
s=(500*60*2)/(6*1000*780)
disp(s,"Therefore,  psi(in Wb)=")
