pf=0.707
theta=acos(pf)
P=200
Q=tan(theta)*P
pf2=0.85
theta_n=acos(pf2)
Qn=Q*tan(theta_n)
Qc=Q-Qn

w=314
V=2000
C=Qc/(V*V*w)

disp(C)