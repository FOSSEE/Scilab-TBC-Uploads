//caption:Find (a)resolution of the voltmeter(b)display of 0.6368 in voltmeter on the 10V range(c)display of 0.6368 in voltmeter on the 1V range
//Ex7.23
clc
clear
close
n=4//precise digit value of voltmeter
Va=10//range(in V)
Vb=1//range(in V)
R=1/10^n
disp(R,'(a)resolution of the voltmeter(in V)=')
Vo=Va*R
d=0.636
disp(d,'(b)display of 0.6368 in voltmeter on the 10V range(in V)=')
V=Vb*R
do=0.6368
disp(do,'(c)display of 0.6368 in voltmeter on the 1V range(in V)=')