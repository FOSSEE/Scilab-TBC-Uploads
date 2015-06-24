a=2400/240

R=0.2+a*a*2/1000
X=0.6+a*a*6/1000
disp(R,X)

Rlv=1/a/a*R
Xlv=1/a/a*X
disp(Rlv,Xlv)

I2=150*1000/2400
Z=R+%i*X
V=I2*Z
pcnt=norm(V)/2400*100
disp(V,pcnt)

Im=2400/1600
Ii=2400/10000
Io=Ii-%i*Im
pf=cos(atan(imag(Io)/real(Io)))
disp(Io,pf)