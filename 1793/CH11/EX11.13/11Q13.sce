clc
H = 6
Cc = 0.28
eo = 0.9
Cv = 0.36
To=210
Tp=115
Sc= Cc*H*log10((To+Tp)/To)/(1+eo)
t2=9
Hd=3
Tv=Cv*t2/Hd^2
U=0.67
Tf=0.677*Tp
printf('Tf = %f kN/m^2',Tf)
