v1=2200
v2=220
f=50
emfperturn=12

N1=floor(v1/emfperturn)
N2=floor(v2/emfperturn)
disp(N1)
disp(N2)

fluxmax=emfperturn/4.44/f
Bmax=1.5
Ac=fluxmax/Bmax
disp(Ac)
