clc
FSs=1
c=20
G=18.9
C=24
Hcr=C/(G*tand(c)*0.17)
printf('a)Critical height Hc = %f m\n',Hcr)
H=10
k=C/(G*H*tand(c))
Fs=4*tand(c)
printf(' b)Fs = %f',Fs)
