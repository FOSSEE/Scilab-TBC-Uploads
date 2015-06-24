f=50
f2=120/60
s=f2/f
ns=1500
n=(1-s)*ns
w=2*%pi*n/60

T=100
Pshaft=T*w
disp(Pshaft)
Pm=(T+7)*w
Pcur=Pm*s/(1-s)
disp(Pcur)
Pin=Pm+Pcur+700
disp(Pin)
effi=Pshaft/Pin
disp(effi)
