P=5E6
pf=0.85
V=33000
l=50000
rho=3E-8
Pt=P*pf
Pl=Pt*0.1
I=P/V
A1=2*I*I*rho*l/Pl
Vol1=2*l*A1
disp(Vol1)

Il=P/sqrt(3)/V
A2=3*Il*Il*rho*l/Pl
Vol2=3*l*A2
disp(Vol2)
