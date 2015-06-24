clc
Fs=1
b=56
Kh=0.25
M=3.66
Cu=500
G=100
Hc=Cu*M/G
printf('a)The maximum depth = %f ft\n',Hc)
Fs=2
H=Cu*M/(G*Fs)
printf(' b)H= %f ft',H)
