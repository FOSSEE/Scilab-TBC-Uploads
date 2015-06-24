a=10
Load=120000
V=400

I=Load/V/sqrt(3)
Vll=a*V/sqrt(3)
Ill=sqrt(3)*I/a
all=Vll/V
disp(Vll,Ill,all)

Vll=a*V*sqrt(3)
Ill=I/a/sqrt(3)
all=Vll/V
disp(Vll,Ill,all)
