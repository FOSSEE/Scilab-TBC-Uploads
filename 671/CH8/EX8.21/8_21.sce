P=500E3
effi=0.95

A=[1,1;1,0.6*0.6]
Pa=inv(A)*[P*(1-effi)/effi;P*0.6*(1-effi)/effi]
Pi=Pa(1)
disp(Pi)
Pc=Pa(2)
disp(Pc)

Pl=Pi+0.75*0.75*Pc
effi=P*0.75/(P*0.75+Pl)
disp(effi)
