N=100
l1=0.15
l2=0.3
l3=0.45
A=0.001
u0 = 4*%pi*10^−7;

ur1=1447
ur2=5969
ur3=47750

flux=0.6E-3

B=flux/A

H1=B/(uo*ur1)
H2=B/(uo*ur2)
H3=B/(uo*ur3)
disp(H1,H2,H3)

F=H1*l1+H2*l2+H3*l3
disp(F)

I=F/N
disp(I)