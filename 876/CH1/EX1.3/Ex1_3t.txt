//caption:find (a)system accuracy(b)system precision
//Ex1.3
clc
clear
close
Tmin=100.3//minimum measured temperature at true value(in degree centigrate)
Tmax=100.5//maximum measured temperature at true value(in degree centigrate)
T1=100.4//measured temperature at true value(in degree centigrate)
T2=100.3//measured temperature at true value(in degree centigrate)
Tt=100//true value(in degree centigrate)
A=((Tmax-Tt)/Tt)*100
disp(A,'(a)system accuracy(in %)=')
M=(T1+Tmin+Tmax+T2)/4
Md=Tmax-M
disp(Md,'(b)system precision(in %)=')