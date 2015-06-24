//caption:Find (a)resolution of the voltmeter(b)display of 16.58 in voltmeter on the 10V range(c)display of 0.7254 in voltmeter on the 1V and 10V range
//Ex7.24
clc
clear
close
n=4//precise digit value of voltmeter
Va=10//range(in V)
Vb=1//range(in V)
R=1/10^n
disp(R,'(a)resolution of the voltmeter(in V)=')
Vo=Va*R
d=16.58
disp(d,'(b)display of 16.58 in voltmeter on the 10V range(in V)=')
V=Vb*R
do=0.7254
disp(do,'(c)display of 0.7254 in voltmeter on the 1V range(in V)=')