clc
W=22.4
C=20
a=70
s=sind(a)
c=cosd(a)
l=2.924
Wn=W*s
Wn1=W*c
//doing this to all values
F1=30.501
F2=776.75
F3=1638
Fs=(F1*C+F3*tand(C))/F2
printf('Fs = %f',Fs)
