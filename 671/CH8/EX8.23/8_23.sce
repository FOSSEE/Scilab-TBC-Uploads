v1=3300
v2=600
f=50
Ac=25/10000
l=1.2

Bmax=1.2
fluxmax1=Bmax*Ac
N1=v1/4.44/f/fluxmax1
N2=v2/4.44/f/fluxmax1
disp(N1,N2)

I2=20
pf=0.8
I1=N2/N1*I2
I1=I1*(pf-%i*sin(acos(0.8)))
disp(I1)

Hmax=250
ATmax=Hmax*l
immax=ATmax/N1/sqrt(2)
Ii=0
I1=-%i*immax+I1
disp("lagging", real(I1)/norm(I1), norm(I1))
