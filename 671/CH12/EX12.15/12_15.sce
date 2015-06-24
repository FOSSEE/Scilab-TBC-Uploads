V1=400
R1=2.28*3/2
R1ac=1.1*3.42

Y0=3.5/sqrt(3)/V1
Gi=(445/3)/V1/V1
Bm=sqrt(Y0^2-Gi^2)
Ri=1/Gi
Xm=1/Bm

V2=200
Z=V2/16.7*sqrt(3)
R=2220/16.7/16.7
X=sqrt(Z*Z-R*R)
R2=R-R1ac

n=935
ns=1000
s=1-n/ns
Z=R1ac+R2/s+%i*X
I2=V1/Z
Ii=V1/Ri-%i*V1/Xm
I1=I2+Ii
Iline=norm(I1)*sqrt(3)
pf=real(I1)/norm(I1)
ws=2*%pi*ns/60
T=norm(3*I2*I2*R2/s/ws)
disp(T)
disp(Iline)

Pm=norm(3*I2*I2*R2*(1-s)/s)
Pin=sqrt(3)*V1*Iline*pf
effi=Pm/Pin
disp(effi)

V=400
s=1
Z=R1ac+R2/s+%i*X
I2=V/sqrt(3)/Z      ////calculation mistake in the book at this step
Ts=norm(3*I2*I2*R2/ws)
disp(Ts)
