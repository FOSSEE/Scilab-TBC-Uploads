clc
Gs=17.8
Gw=9.81
C=10
c=20
b=15
H=6
G=Gs-Gw
Fs= C/(Gs*H*cosd(b)*cosd(b)*tand(b))+G*tand(c)/(Gs*tand(b))
printf('a)The factor of safety = %f \n',Fs)
Fs=2
H=2.247/(Fs-0.61)
printf(' b)H= %f m',H)
