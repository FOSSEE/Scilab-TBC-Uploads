//example2.21
clc
disp("P=6, psi=0.02 Wb, N=1000 rpm, A=P as lap wound")
z=65*12
disp(z,"Z=slots*conductors/slot=")
g=(0.02*6*1000*780)/(60*6)
disp(g,"E_g(in V)=(psi*P*N*Z)/(60*A)=")
