f=50
a=1100/220
Rhv=0.125
Xhv=0.625
Rlv=0.005
Xlv=0.025

Zhv=Rhv+%i*Xhv
Zlv=Rlv+%i*Xlv

Z1=Zhv+a*a*Zlv
disp(Z1)
Z2=Z1/a/a
disp(Z2)

Zpu1=Z1*0.05/1.1/1.1
disp(Zpu1)
Zpu2=Z2*0.05/0.22/0.22
disp(Zpu2)
